call textobj#user#plugin('pandoc', {
      \   'chunk': {
      \     'select-a-function': 'textobj#markdown#chunk#af',
      \     'select-a': '<buffer>af',
      \     'select-i-function': 'textobj#markdown#chunk#if',
      \     'select-i': '<buffer>if',
      \     'pattern': '```\S',
      \     'move-n': '<buffer>]f',
      \     'move-p': '<buffer>[f',
      \     'region-type': 'V',
      \   },
      \   'Bchunk': {
      \     'select-a-function': 'textobj#markdown#chunk#aF',
      \     'select-a': '<buffer>aF',
      \     'select-i-function': 'textobj#markdown#chunk#iF',
      \     'select-i': '<buffer>iF',
      \     'pattern': '```$',
      \     'move-n': '<buffer>]g',
      \     'move-p': '<buffer>[g',
      \     'region-type': 'V',
      \   },
      \   'text': {
      \     'select-a': '<buffer>am',
      \     'select-a-function': 'textobj#markdown#text#am',
      \     'select-i': '<buffer>im',
      \     'select-i-function': 'textobj#markdown#text#im',
      \     'move-n': '<buffer>]m',
      \     'move-n-function': 'textobj#markdown#text#n',
      \     'move-p': '<buffer>[m',
      \     'move-p-function': 'textobj#markdown#text#p',
      \     'region-type': 'V',
      \   },
      \   'Btext': {
      \     'select-a': '<buffer>aM',
      \     'select-a-function': 'textobj#markdown#text#aM',
      \     'select-i': '<buffer>iM',
      \     'select-i-function': 'textobj#markdown#text#iM',
      \     'move-n': '<buffer>]n',
      \     'move-n-function': 'textobj#markdown#text#N',
      \     'move-p': '<buffer>[n',
      \     'move-p-function': 'textobj#markdown#text#P',
      \     'region-type': 'V',
      \   },
      \   'header': {
      \     'pattern': '^#[^#]\|^\S.\{-}\n=\{3,}$',
      \     'move-n': '<buffer>]]',
      \     'move-p': '<buffer>[[',
      \   },
      \   'Sheader': {
      \     'pattern': '^##[^#]\|^\S.\{-}\n-\{3,}$',
      \     'move-n': '<buffer>][',
      \     'move-p': '<buffer>[]',
      \   },
      \   'SSheader': {
      \     'pattern': '^###[^#]',
      \     'move-n': '<buffer>]}',
      \     'move-p': '<buffer>[{',
      \   },
      \   'Gheader': {
      \     'pattern': '^#\+\|^\S.\{-}\n=\{3,}$\|^\S.\{-}\n-\{3,}$',
      \     'move-n': '<buffer>]h',
      \     'move-p': '<buffer>[h',
      \   },
      \ })
