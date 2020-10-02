" forward chunk
function! textobj#markdown#chunk#af()
  let l:tail = search('```$', 'Wc')
  let l:head = search('```\S', 'Wb')
  if !l:head || !l:tail
    echom "vim-textob-markdown: Code fence not found, perhaps the start does not identify a language"
    return 0
  endif
  return ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#if()
  let l:tail = search('```$', 'Wc')
  let l:head = search('```\S', 'Wb')
  if !l:head || !l:tail
    echom "vim-textob-markdown: Code fence not found, perhaps the start does not identify a language"
    return 0
  endif
  let l:head += 1
  let l:tail -= 1
  if l:tail < l:head
    echom "vim-textob-markdown: Code fence found, but zero length"
    return 0
  endif
  return ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction

" backward chunk
function! textobj#markdown#chunk#aF()
  let l:head = search('```\S', 'Wbc')
  let l:tail = search('```$', 'W')
  if !l:head || !l:tail
    echom "vim-textob-markdown: Code fence not found, perhaps the start does not identify a language"
    return 0
  endif
  return ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#iF()
  let l:head = search('```\S', 'Wbc')
  let l:tail = search('```$', 'W')
  if !l:head || !l:tail
    echom "vim-textob-markdown: Code fence not found, perhaps the start does not identify a language"
    return 0
  endif
  let l:head += 1
  let l:tail -= 1
  if l:tail < l:head
    echom "vim-textob-markdown: Code fence found, but zero length"
    return 0
  endif
  return ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction
