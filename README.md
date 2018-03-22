            ####### ####### #     # ####### ####### ######        # 
               #    #        #   #     #    #     # #     #       # 
               #    #         # #      #    #     # #     #       # 
               #    #####      #       #    #     # ######        # 
               #    #         # #      #    #     # #     # #     # 
               #    #        #   #     #    #     # #     # #     # 
               #    ####### #     #    #    ####### ######   #####  
                                                                    
        #     #    #    ######  #    # ######  ####### #     # #     # 
        ##   ##   # #   #     # #   #  #     # #     # #  #  # ##    # 
        # # # #  #   #  #     # #  #   #     # #     # #  #  # # #   # 
        #  #  # #     # ######  ###    #     # #     # #  #  # #  #  # 
        #     # ####### #   #   #  #   #     # #     # #  #  # #   # # 
        #     # #     # #    #  #   #  #     # #     # #  #  # #    ## 
        #     # #     # #     # #    # ######  #######  ## ##  #     # 
                                                                       
                                                                    

Table of Contents
=================


<!-- vim-markdown-toc GFM -->

* [Introduction](#introduction)
* [Headers](#headers)
* [Code Blocks](#code-blocks)
  * [Code Block Text Objects](#code-block-text-objects)
  * [Code Block Movement](#code-block-movement)
* [Text Blocks](#text-blocks)
  * [Text Text Objects](#text-text-objects)
  * [Text Movement](#text-movement)
* [Dependencies](#dependencies)
* [License](#license)

<!-- vim-markdown-toc -->

Introduction
============

Textobj-Markdown provides text objects and movements for markdown and Rmarkdown
files. Textobj-Markdown is built upon, and requires [textobj-user][1]. It
provides default key mappings and movements for code blocks, text between code
blocks, and three levels of headers. If you choose not to apply the default
mappings, simply include the following in you vimrc/init.vim:

```vim
" remove default mappings
let g:__textobj_markdown_no_mappings=1
```

Headers
=======

Textobj-Markdown provides convenient mappings for moving between different levels
of headers. Textobj-Markdown uderstand both styles of headers (i.e. #/## or
===/---). The plug and default mappings are shown below.

```vim
" level 1 headers
" # Header
" or
" Header
" =====
]] "next
[[ "previous

"level 2 headers
" ## Sub Header
" or
" Sub Header
" ----------
][ "next
[] "previous

" level 3 headers
" ### Sub Sub Header
]} "next
[{ "previous
```

Code Blocks
===========

Code Block Text Objects
-----------------------


Textobj-Markdown provides

```vim
" current or next code block
if " inside of block
af " around block

" current or previous code block
iF " inside of block
aF " around block
```

Code Block Movement
-------------------

Textobj-Markdown also provides convenient mappings to move beteen code blocks.

```vim
" start of code block
]f " next
[f " previous

" end of code block
]g " next
[g " previous
```

Text Blocks
===========

Text Text Objects
-----------------

```vim
" current or next code block
if " inside of block
af " around block

" current or previous code block
iF " inside of block
aF " around block
```

Text Movement
-------------

```vim
" start of text block
]m " next
[m " previous

" end of text block
]n " next
[n " previous
```

Dependencies
============

[textobj-user][1]

License
=======

Copyright (c) Torsten Schmits. Distributed under the terms of the [MIT
License][2].

[1]: https://github.com/kana/vim-textobj-user 'textobj-user'
[2]: http://opensource.org/licenses/MIT 'mit license'
