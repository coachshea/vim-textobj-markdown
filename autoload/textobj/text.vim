" forward text
function!textobj#markdown#text#am()

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

function!textobj#markdown#text#im()

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
function! textobj#markdown#text#aM()

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

function! textobj#markdown#text#iM()

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