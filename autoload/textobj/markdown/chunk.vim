" forward chunk
function! textobj#markdown#chunk#ak()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wb')
  if !head || !tail
    return 0
  endif
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#ik()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wb')
  if !head || !tail
    return 0
  endif
  let head += 1
  let tail -= 1
  if tail < head
    return 0
  endif
  return ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

" backward chunk
function! textobj#markdown#chunk#aK()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'W')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#iK()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'W')
  if !head || !tail
    return 0
  endif
  let head += 1
  let tail -= 1
  if tail > head
    return 0
  endif
  return ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction
