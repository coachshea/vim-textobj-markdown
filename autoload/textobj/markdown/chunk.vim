" forward chunk
function! textobj#markdown#chunk#af()
  let l:tail = search('```$', 'Wc')
  let l:head = search('```\S', 'Wb')
  return !l:head || !l:tail
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#if()
  let l:tail = search('```$', 'Wc')
  let l:head = search('```\S', 'Wb')
  if !l:head || !l:tail
    return 0
  endif
  let l:head += 1
  let l:tail -= 1
  return l:tail < l:head
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction

" backward chunk
function! textobj#markdown#chunk#aF()
  let l:head = search('```\S', 'Wbc')
  let l:tail = search('```$', 'W')
  return !l:head || !l:tail
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#iF()
  let l:head = search('```\S', 'Wbc')
  let l:tail = search('```$', 'W')
  if !l:head || !l:tail
    return 0
  endif
  let l:head += 1
  let l:tail -= 1
  return l:tail < l:head
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]
endfunction
