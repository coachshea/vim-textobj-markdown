call textobj#user#plugin('markdown', {
      \   'fence': {
      \     'sfile': expand('<sfile>:p'),
      \     'select-a-function': 'textobj#markdown#chunk#ak',
      \     'select-a': '<buffer>ak',
      \     'select-i-function': 'textobj#markdown#chunk#ik',
      \     'select-i': '<buffer>ik',
      \     'region-type': 'V',
      \   },
      \   'Bfence': {
      \     'sfile': expand('<sfile>:p'),
      \     'select-a-function': 'textobj#markdown#chunk#aK',
      \     'select-a': '<buffer>aK',
      \     'select-i-function': 'textobj#markdown#chunk#iK',
      \     'select-i': '<buffer>iK',
      \     'region-type': 'V',
      \   },
      \   'text': {
      \     'sfile': expand('<sfile>:p'),
      \     'select-a-function': 'textobj#markdown#text#am',
      \     'select-a': '<buffer>am',
      \     'select-i-function': 'textobj#markdown#text#im',
      \     'select-i': '<buffer>im',
      \     'region-type': 'V',
      \   },
      \   'Btext': {
      \     'sfile': expand('<sfile>:p'),
      \     'select-a-function': 'textobj#markdown#text#aM',
      \     'select-a': '<buffer>aM',
      \     'select-i-function': 'textobj#markdown#text#iM',
      \     'select-i': '<buffer>iM',
      \     'region-type': 'V',
      \   },
      \ })

