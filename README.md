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
* [Code Fences](#code-fences)
  * [Code Fence Text Objects](#code-fence-text-objects)
  * [Code Fence Movement](#code-fence-movement)
* [Text Blocks](#text-blocks)
  * [Text Text Objects](#text-text-objects)
  * [Text Movement](#text-movement)
* [Conflicts with Other Plugins](#conflicts-with-other-plugins)
* [Dependencies](#dependencies)
* [License](#license)

<!-- vim-markdown-toc -->

Introduction
============

Textobj-Markdown provides text objects and movements for markdown and Rmarkdown
files. Textobj-Markdown is built upon, and requires [textobj-user][1]. It
provides default key mappings and movements for code fences, text between code
fences, and three levels of headers. If you choose not to apply the default
mappings, simply include the following in you `vimrc/init.vim`:

```vim
" remove default mappings
let g:__textobj_markdown_no_mappings=1
```

Headers
=======

Textobj-Markdown provides convenient mappings for moving between different
levels of headers and also provides a mapping to move to the next header of
any level. Textobj-Markdown understand both styles of headers (i.e. #/## or
===/---). The plug and default mappings are shown below.

```vim
" level 1 headers
" # Header
" or
" Header
" =====

" plug
<Plug>(textobj-markdown-header-n)
<Plug>(textobj-markdown-header-p)

" default
]] "next
[[ "previous
```

```vim
"level 2 headers
" ## Sub Header
" or
" Sub Header
" ----------

" plug
<Plug>(textobj-markdown-Sheader-n)
<Plug>(textobj-markdown-Sheader-p)

" default
][ "next
[] "previous
```

```vim
" level 3 headers
" ### Sub Sub Header

" plug
<Plug>(textobj-markdown-SSheader-n)
<Plug>(textobj-markdown-SSheader-p)

" default
]} "next
[{ "previous
```

```vim

" general
" any level of header

" plug
<Plug>(textobj-markdown-Gheader-n)
<Plug>(textobj-markdown-Gheader-p)

" default
]h "next
[h "previous

```

Code Fences
===========
 
Textobj-Markdown provides text objects and movement maps for working with code
fences. These are sometimes called code chunks or code blocks. By any name,
Textobj-Markdown provides a convenient way to work with these sections.
 
Code Fence Text Objects
-----------------------

For operating on code fence, Textobj-Markdown provides two sets of mappings. By
default they are mapped to `if/af` and `iF/aF`. When on or inside of a current
code block, both of these mappings work on the current block. When outside of a
code block the `if/af` mappings will search forward for a code block and the
`iF/aF` mappings will search backward for a code block.

```vim
" current or next code fence

" inside of fence plug
<plug>(textobj-markdown-chunk-i)
" inside of block default
if
  
"around fence plug
<plug>(textobj-markdown-chunk-a)
"around block default
af

" current or previous code fence

" inside of fence plug
<plug>(textobj-markdown-Bchunk-i)
" inside of block default
iF

"around fence plug
<plug>(textobj-markdown-Bchunk-a)
"around block default
aF
```

Code Fence Movement
-------------------

In addition to text objects, Textobj-Markdown also provides movement mappings
for code fences. Mappings are provided which for to the next/previous start of
a fence as well as the next/previous end of a fence.

```vim
" start of fence block

" next fence plug
<plug>(textobj-markdown-chunk-n)
" default
]f " next

" previous fence plug
<plug>(textobj-markdown-chunk-p)
" default
[f " previous

" end of fence block

" next fence plug
<plug>(textobj-markdown-chunk-N)
" default
]g " next

" previous fence plug
<plug>(textobj-markdown-chunk-P)
" default
[g " previous
```

Text Blocks
===========

Textobj-Markdown provides text objects and movement mappings for the blocks of
text between code blocks as well.

Text Text Objects
-----------------

Textobj-Markdown provides two sets of text objects for dealing with the blocks
of text between code blocks `im/am` and `iM/aM`. As with the code fences text
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

Conflicts with Other Plugins
============================

As the list of [text-obj plugins][3] grows, there is an ever increasing chance
for mapping conflicts. One plugin in particular that has a conflict with this
one is textobj-function, which is one of my favorite textobj-user plugins.
The functions for the [textobj-function][4] plugin are only operative for
`vim`, `java`, and `c` filetypes, so I did not expect a problem. However, the
way the mappings are set up is that they are set globally and the function
which they call changes based on filetype. This design allows the plugin the
possibility of expanding to cover more filetypes, but does cause a conflict
with Textobj-Markdown. I am unaware of other plugins that conflict, but it is
always possible.

This means that if you use textobj-markdown with [textobj-function][4],
you will need to map the `af/if` and `aF/iF` mappings yourself. However,
markdown does not have any functions and it is certainly possible to create
buffer-specific mappings for `af/if` and `aF/iF` without affecting the
functionality of the [textobj-function][4] plugin for `vim`, `java`, and `c`
files. Simply put the following in you `.vimrc` or `init.vim`:

```vim
omap <buffer> af <plug>(textobj-markdown-chunk-a)
omap <buffer> if <plug>(textobj-markdown-chunk-i)
omap <buffer> aF <plug>(textobj-markdown-Bchunk-a)
omap <buffer> iF <plug>(textobj-markdown-Bchunk-i)
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
[3]: https://github.com/kana/vim-textobj-user/wiki 'text-obj plugins'
[4]: https://github.com/kana/vim-textobj-function 'textobj-function'
