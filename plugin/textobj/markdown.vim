let g:textobj_markdown_no_default_key_mappings = 1

call textobj#user#plugin('markdown', {
      \   'fence': {
      \     'select-a-function': 'textobj#markdown#a_fence',
      \     'select-a': 'af',
      \     'select-i-function': 'textobj#markdown#i_fence',
      \     'select-i': 'if',
      \   },
      \   'Bfence': {
      \     'select-a-function': 'textobj#markdown#a_bfence',
      \     'select-a': 'aF',
      \     'select-i-function': 'textobj#markdown#i_bfence',
      \     'select-i': 'iF',
      \   },
      \   'text': {
      \     'select-a-function': 'textobj#markdown#a_text',
      \     'select-a': 'am',
      \     'select-i-function': 'textobj#markdown#i_text',
      \     'select-i': 'im',
      \   },
      \   'Btext':
      \     {
      \     'select-a-function': 'textobj#markdown#a_Btext',
      \     'select-a': 'aM',
      \     'select-i-function': 'textobj#markdown#i_Btext',
      \     'select-i': 'iM',
      \   },
      \ })
