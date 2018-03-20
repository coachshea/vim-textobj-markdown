" forward chunk
function! textobj#markdown#chunk#af()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wbc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#if()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wbc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head + 1, 1, 0], [0, tail - 1, 1, 0]]
endfunction

" backward chunk
function! textobj#markdown#chunk#aF()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'Wc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#chunk#iF()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'Wc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head + 1, 1, 0], [0, tail - 1, 1, 0]]
endfunction

