
call textobj#user#plugin('markdown', {
      \   'fence': {
      \     'pattern':     ['```\S', '```$'],
      \     'select-a':    '<buffer>ag',
      \     'select-i':    '<buffer>ig',
      \     'move-n':      '<buffer>]f',
      \     'move-p':      '<buffer>[f',
      \     'move-N':      '<buffer>]g',
      \     'move-P':      '<buffer>[g',
      \     'region-type': 'V',
      \   },
      \   'md': {
      \     'pattern': '^$',
      \     'select': ['am', 'im'],
      \     'move-n': ']m',
      \     'move-p': '[m',
      \     'move-N': ']n',
      \     'move-P': '[n',
      \     'region-type': 'V',
      \   },
      \  'head': {
      \     'pattern': ['^#[^#]', '\n#[^#]'],
      \     'move-n': ']]',
      \     'move-p': '[[',
      \     'move-N': '][',
      \     'move-P': '[]',
      \},
      \ })
