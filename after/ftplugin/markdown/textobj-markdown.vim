if !get(g:, 'textobj_markdown_no_mappings', 0)
  omap <buffer> af <Plug>(textobj-markdown-fence-a)
  omap <buffer> if <Plug>(textobj-markdown-fence-i)
  omap <buffer> aF <Plug>(textobj-markdown-Bfence-a)
  omap <buffer> iF <Plug>(textobj-markdown-Bfence-i)

  omap <buffer> am <Plug>(textobj-markdown-text-a)
  omap <buffer> im <Plug>(textobj-markdown-text-i)
  omap <buffer> aM <Plug>(textobj-markdown-Btext-a)
  omap <buffer> iM <Plug>(textobj-markdown-Btext-i)

  xmap <buffer> af <Plug>(textobj-markdown-fence-a)
  xmap <buffer> if <Plug>(textobj-markdown-fence-i)
  xmap <buffer> aF <Plug>(textobj-markdown-Bfence-a)
  xmap <buffer> iF <Plug>(textobj-markdown-Bfence-i)

  xmap <buffer> am <Plug>(textobj-markdown-text-a)
  xmap <buffer> im <Plug>(textobj-markdown-text-i)
  xmap <buffer> aM <Plug>(textobj-markdown-Btext-a)
  xmap <buffer> iM <Plug>(textobj-markdown-Btext-i)
endif
