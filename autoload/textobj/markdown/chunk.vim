" forward fence
function! textobj#markdown#fence#af()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wbc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#fence#if()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wbc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head + 1, 1, 0], [0, tail - 1, 1, 0]]
endfunction

" backward fence
function! textobj#markdown#fence#aF()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'Wc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#fence#iF()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'Wc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head + 1, 1, 0], [0, tail - 1, 1, 0]]
endfunction

