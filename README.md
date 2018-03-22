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
of headers. Textobj-Markdown understand both styles of headers (i.e. #/## or
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
 
Textobj-Markdown provides text objects and movement maps for working with code
blocks. These are sometimes called code chunks or code fences. By any name,
Textobj-Markdown provides a convenient way to work with these sections.
 
Code Block Text Objects
-----------------------

For operating on code blocks, Textobj-Markdown provides two sets of mappings. By
default they are mapped to `if/af` and `iF/aF`. When on or inside of a current
code block, both of these mappings work on the current block. When outside of a
code block the `if/af` mappings will search forward for a code block and the
`iF/aF` mappings will search backward for a code block.

```vim
" current or next code block

" inside of block plug
<plug>(textobj-markdown-chunk-i)
" inside of block default
if
  
"around block plug
<plug>(textobj-markdown-chunk-a)
"around block default
af

" current or previous code block

" inside of block plug
<plug>(textobj-markdown-Bchunk-i)
" inside of block default
iF

"around block plug
<plug>(textobj-markdown-Bchunk-a)
"around block default
aF
```

Code Block Movement
-------------------

In addition to text objects, Textobj-Markdown also provides movement mappings
for code blocks. Mappings are provided which for to the next/previous start of
a code block as well as the next/previous end of a code block.

```vim
" start of code block

" next block plug
<plug>(textobj-markdown-chunk-n)
" default
]f " next

" previous block plug
<plug>(textobj-markdown-chunk-p)
" default
[f " previous

" end of code block

" next block plug
<plug>(textobj-markdown-chunk-N)
" default
]g " next

" previous block plug
<plug>(textobj-markdown-chunk-P)
" default
[g " previous
```

Text Blocks
===========

Textobj-Markdown provides text object and movement mappings for the blocks of
text between code blocks as well.

Text Text Objects
-----------------

Textobj-Markdown provides two sets of text objects for dealing with the blocks
of text between code blocks `im/am` and `iM/aM`. As with the code block text
objects, when within a text block, either set of mappings will work on the
current text block. If not within a current text block, the `im/am` mappings
will search forward for the next text block and the `iM/aM` mappings will
search backward.

```vim
" current or next text block
<plug>(textobj-markdown-text-i)
im " inside of block
<plug>(textobj-markdown-text-a)
am " around block

" current or previous text block
<plug>(textobj-markdown-Btext-i)
iM " inside of block
<plug>(textobj-markdown-Btext-a)
aM " around block
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
