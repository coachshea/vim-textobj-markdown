" forward fence
function! textobj#markdown#a_fence()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wbc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#i_fence()
  let tail = search('```$', 'Wc')
  let head = search('```\S', 'Wbc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head + 1, 1, 0], [0, tail - 1, 1, 0]]
endfunction

" backward fence
function! textobj#markdown#a_bfence()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'Wc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

function! textobj#markdown#i_bfence()
  let head = search('```\S', 'Wbc')
  let tail = search('```$', 'Wc')
  return !head || !tail
        \ ? 0
        \ : ['V', [0, head + 1, 1, 0], [0, tail - 1, 1, 0]]
endfunction

" forward text
function!textobj#markdown#a_text()

  " tail
  let tail = search('```\S', 'W')
  if !tail
    let tail = line('$')
    exe tail
  else
    let tail -= 1
  endif

  " head
  let head = search('```$', 'Wbc')
  if !head
    let head = 1
  elseif tail == line('$')
    let head += 1
  else
    let head += 2
  endif

  return ['V', [0, head, 1, 0], [0, tail, 1, 0]]

endfunction

function!textobj#markdown#i_text()

  " tail
  let tail = search('```\S', 'W')
  if !tail
    let tail = line('$')
    exe tail
  else
    let tail -= 2
  endif

  " head
  let head = search('```$', 'Wbc')
  if !head
    let head = 1
  else
    let head += 2
  endif

  return ['V', [0, head, 1, 0], [0, tail, 1, 0]]

endfunction

" backward text
function! textobj#markdown#a_btext()

  " head
  let head = search('```$', 'Wbc')
  if !head
    let head = 1
    exe head
  else
    let head += 2
  endif

  " tail
  let tail = search('```\S', 'W')
  if !tail
    let tail = line('$')
  else
    let tail -= 1
  endif

  return ['V', [0, head, 1, 0], [0, tail, 1, 0]]

endfunction

function! textobj#markdown#i_btext()

  " head
  let head = search('```$', 'Wbc')
  if !head
    let head = 1
    exe head
  else
    let head += 2
  endif

  " tail
  let tail = search('```\S', 'W')
  if !tail
    let tail = line('$')
  else
    let tail -= 2
  endif

  return ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction
