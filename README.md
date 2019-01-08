# m o n o t o n e

Another monochrome vim colorscheme. Inspired by various
[other](https://github.com/ewilazarus/preto)
[monochrome](https://github.com/pbrisbin/vim-colors-off)
[colorschemes](https://github.com/fxn/vim-monochrome).

Monotone is a middle ground between a regular colorscheme and [no syntax
highlighting at all](https://www.kyleisom.net/blog/2012/10/17/syntax-off/). The
colorscheme differentiates comments, strings and keywords with different
weights and shades of gray. It emphasizes errors, warnings and search
highlighting as shown in the screenshots below.

It's possible to customize the theme color for terminals with `termguicolors`
set by setting `g:monotone_color` to an array of HSL values. The following
snippet sets the colorscheme to a green theme (screenshot below):

```
let g:monotone_color = [80, 58, 60]
colorscheme monotone
```

## Screenshots

![Screenshot of Kotlin and vimscript syntax examples in a split window](screenshots/1.png)

![Screenshot of search and TODO highlighting examples](screenshots/2.png)

![Screenshot of custom theme color](screenshots/3.png)
