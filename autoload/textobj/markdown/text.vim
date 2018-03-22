" object helper
function! s:object(head, tail)
  return tail > head
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]
endfunction

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
  let head = search('```$', 'Wb')
  if !head
    let head = 1
  elseif tail == line('$')
    let head += 1
  else
    let head += 2
  endif

  return tail > head
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]

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
  let head = search('```$', 'Wb')
  if !head
    let head = 1
  else
    let head += 2
  endif

  return tail > head
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]

endfunction

" backward text
function! textobj#markdown#text#aM()

  " head
  let head = search('```$', 'Wb')
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

  return tail > head
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]

endfunction

function! textobj#markdown#text#iM()

  " head
  let head = search('```$', 'Wb')
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

  return tail > head
        \ ? 0
        \ : ['V', [0, head, 1, 0], [0, tail, 1, 0]]

endfunction

" movement helper function
function! s:move(line)
  if !a:line || getline(a:line) =~ '```'
    return 0
  endif
  return ['V', [0, a:line, 1, 0], [0, a:line, 1, 0]]
endfunction

" function! s:move(line)
"   return !a:line || getline(a:line) =~ '```'
"         \ ? 0
"         \ : ['V', [0, a:line, 1, 0], [0, a:line, 1, 0]]
" endfunction 

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
