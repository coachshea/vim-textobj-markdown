" forward text
function!textobj#markdown#text#am()

  " tail
  let l:tail = search('\n```\S\|\%$', 'Wc')
  if getline(l:tail) =~ '```'
    return 0
  endif

  " head
  let l:head = search('```$\n\zs\|\%^', 'Wb')
  if l:tail != line('$') && head != 1
    let l:head += 1
  endif
  if getline(l:head) =~ '```'
    return 0
  endif

  return l:tail < l:head
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]

endfunction

function!textobj#markdown#text#im()

  " tail
  let l:tail = search('```\S', 'W')
  if !l:tail
    let l:tail = line('$')
    exe l:tail
  else
    let l:tail -= 2
  endif

  " head
  let l:head = search('```$', 'Wb')
  if !l:head
    let l:head = 1
  else
    let l:head += 2
  endif

  return l:tail < l:head
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]

endfunction

" backward text
function! textobj#markdown#text#aM()

  " head
  let l:head = search('```$', 'Wb')
  if !l:head
    let l:head = 1
    exe l:head
  else
    let l:head += 2
  endif

  " tail
  let l:tail = search('```\S', 'W')
  if !l:tail
    let l:tail = line('$')
  else
    let l:tail -= 1
  endif

  return l:tail < l:head
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]

endfunction

function! textobj#markdown#text#iM()

  " head
  let l:head = search('```$', 'Wb')
  if !l:head
    let l:head = 1
    exe l:head
  else
    let l:head += 2
  endif

  " tail
  let l:tail = search('```\S', 'W')
  if !l:tail
    let l:tail = line('$')
  else
    let l:tail -= 2
  endif

  return l:tail < l:head
        \ ? 0
        \ : ['V', [0, l:head, 1, 0], [0, l:tail, 1, 0]]

endfunction

" movement helper function
function! s:move(line)
  if !a:line || getline(a:line) =~ '```'
    return 0
  endif
  return ['V', [0, a:line, 1, 0], [0, a:line, 1, 0]]
endfunction

" move forward begin
function! textobj#markdown#text#n()
  return s:move(search('```$\n\zs', 'W'))
endfunction

" move backward begin
function! textobj#markdown#text#p()
  return s:move(search('```$\n\zs\|\%^', 'Wb'))
endfunction

" move forward end
function! textobj#markdown#text#N()
  return s:move(search('\n```\S\|\%$', 'W'))
endfunction

" move backward end
function! textobj#markdown#text#P()
  return s:move(search('\n```\S', 'Wb'))
endfunction
