<p align="center">
  <a href="https://www.nordtheme.com/ports/vim" target="_blank">
    <picture>
      <source srcset="https://raw.githubusercontent.com/nordtheme/web/main/assets/images/ports/vim/repository-hero.svg?sanitize=true" width="100%" media="(prefers-color-scheme: light), (prefers-color-scheme: no-preference)" />
      <img src="https://raw.githubusercontent.com/nordtheme/web/main/assets/images/ports/vim/repository-hero.svg?sanitize=true" width="100%" />
    </picture>
  </a>
</p>

<p align="center">
  <a href="https://github.com/nordtheme/vim/releases/latest" target="_blank">
    <img src="https://img.shields.io/github/release/nordtheme/vim.svg?style=flat-square&label=Release&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0"/>
  </a>
  <a href="https://www.nordtheme.com/docs/ports/vim" target="_blank">
    <img src="https://img.shields.io/github/release/nordtheme/vim.svg?style=flat-square&label=Docs&colorA=4c566a&colorB=88c0d0&logo=data%3Aimage%2Fsvg%2Bxml%3Bbase64%2CPHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxNiIgaGVpZ2h0PSIxNiI%2BCiAgICA8cGF0aCBmaWxsPSIjZDhkZWU5IiBkPSJNMTMuNzQ2IDIuODEzYS42Ny42NyAwIDAgMC0uNTU5LS4xMzNMOCAzLjg0OGwtNS4xODgtMS4xOGEuNjY5LjY2OSAwIDAgMC0uNTcuMTMzLjY3Ny42NzcgMCAwIDAtLjI0Mi41MzF2OC4xMzNjLS4wMDguMzIuMjEuNTk4LjUyLjY2OGw1LjMzMiAxLjE5OWguMjk2bDUuMzMyLTEuMmEuNjY4LjY2OCAwIDAgMCAuNTItLjY2N1YzLjMzMmEuNjU5LjY1OSAwIDAgMC0uMjU0LS41MnpNMy4zMzIgNC4xNjhsNCAuODk4djYuNzY2bC00LS44OTh6bTkuMzM2IDYuNzY2bC00IC44OThWNS4wNjZsNC0uODk4em0wIDAiLz4KPC9zdmc%2BCg%3D%3D"/>
  </a>
</p>

<p align="center">
  Changelog for <a href="https://www.nordtheme.com/ports/vim" target="_blank">Nord Vim</a> — An arctic, north-bluish clean and elegant <a href="https://www.vim.org" target="_blank">Vim</a> color theme.
</p>

<!--lint disable no-duplicate-headings-->

# 0.19.0

![Release Date: 2022-05-14](https://img.shields.io/static/v1.svg?style=flat-square&label=Release%20Date&message=2022-05-14&colorA=4c566a&colorB=88c0d0) [![Project Board](https://img.shields.io/static/v1.svg?style=flat-square&label=Project%20Board&message=0.19.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/orgs/nordtheme/projects/1/views/10) [![Milestone](https://img.shields.io/static/v1.svg?style=flat-square&label=Milestone&message=0.19.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/nordtheme/vim/milestone/21)

⇅ [Show all commits][111]

## Features

### Syntax

<details>
<summary><strong>Support for <a href="https://github.com/neovim/neovim/blob/f92a2457c2e7ad14d9a5a907ef4213fa770b6d95/runtime/doc/lsp.txt#L423" target="_blank" rel="noreferrer">LSP <code>textDocument</code>/<code>documentHighlight</code></a></strong> — #284 (⊶ 3e4e273d) by <a href="https://github.com/cmoscofian" target="_blank" rel="noreferrer">@cmoscofian</a></summary>

↠ The [Neovim LSP `textDocument` / `documentHightlight` groups][114] are responsible to highlight tokens in a document that are related to each
other, e.g. declared variables, using the `vim.buf.lsp.document_highlight()` function.
Also see the [LSP specification about "Document Highlights Request"][115] for more details.

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/149228495-6e56f4c5-0df6-4122-ada7-9709e769f6cc.png" width="75%" /></p>

<p align="center"><video src="https://user-images.githubusercontent.com/7836623/149228905-79bc7135-8b6d-480c-a23a-1e5456bf0cc8.mp4" /></p>

</details>

### UI

<details>
<summary><strong>Support for <a href="https://github.com/neovim/neovim/blob/70db972e5fbcab39946ad8ac05472a693cf65b68/runtime/doc/lsp.txt#L456-L459" target="_blank" rel="noreferrer">LSP <code>LSPSignatureActiveParameter</code></a></strong> — #286 (⊶ a8256787) by <a href="https://github.com/cmoscofian" target="_blank" rel="noreferrer">@cmoscofian</a></summary>

↠ The [`vim.lsp.buf.signature_help` function is used to highlight the active parameter in the signature help][117] [1]. Before the active parameter was not styled differently to any other parameter which made it hard to distinguish it. This has been improved by adding support for the `LspSignatureActiveParameter` syntax highlighting group where the active parameter now uses `nord8` are foreground color and additionally a font underline with the same color.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/13448100/154802856-a3baa5f8-4606-41b6-986e-d4f7c509f313.png" width="75%" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/13448100/154802854-5e1f7c7b-9468-4920-93c1-6c26ef2cb0ac.png" width="75%" /></p>

</details>

## Improvements

<details>
<summary><strong>Refactored theme configuration conditions</strong> — #295, #305 (⊶ 291e05d9, e3eb2084) by <a href="https://github.com/jvoisin" target="_blank" rel="noreferrer">@jvoisin</a> and <a href="https://github.com/svengreb" target="_blank" rel="noreferrer">@svengreb</a></summary>

↠ The conditions and default values of the theme configurations were quite verbose so this commit improves them by…

- …using inline ternary operators instead of if/else blocks to reduce the code overhead and make it way more readable.
- …using [Vim builtin `get` function][118] instead of if/else blocks.
- …inlining the script-scoped `logWarning` function since it was only used once.
- …grouping some blocks where it made sense.

</details>

<details>
<summary><strong>Only call <code>execute</code> function once per syntax group</strong> — #303 (⊶ 77fe4b3f) by <a href="https://github.com/jvoisin" target="_blank" rel="noreferrer">@jvoisin</a> and <a href="https://github.com/svengreb" target="_blank" rel="noreferrer">@svengreb</a></summary>

↠ Before the custom `s:hi` function called [Vim's `execute` function][119] for each defined attribute which is quite expensive in terms of performance. To improve this the attributes are now concatenate as string and passed to `exec` at the end of the function instead.

</details>

### Syntax

<details>
<summary><strong>Readability of C language constants</strong> — #283 (⊶ b32592eb) by <a href="https://github.com/jvoisin" target="_blank" rel="noreferrer">@jvoisin</a></summary>

↠ To improve the readability of C language constants, defined by [the `cConstant` syntax highlighting group][116], these are now colored with `nord9` for the foreground to make them stand out. This is important in C, since interesting things are usually happening in their proximity, like checking/returning an error, passing particular values/flags to functions and so on.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/151065869-287cdbd8-aea4-482d-85de-2ffc3b7b335e.png" width="75%" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/151065863-5195ac84-2db3-4ac4-af34-8e9fe6f5286b.png" width="75%" /></p>

</details>

## Tasks

<details>
<summary><strong>Support for <a href="https://neovim.io" target="_blank" rel="noreferrer">Neovim</a></strong> <code>0.6.0</code> diagnostic API highlight groups — #282 (⊶ 8035ba07) by <a href="https://github.com/jan-xyz" target="_blank" rel="noreferrer">@jan-xyz</a></summary>

↠ In [Neovim `0.6.0`][112] the [naming scheme for the highlight groups of the diagnostic API changed][113] [2]. The new groups have been added as default while the previous groups are conditionally guarded when using Neovim `0.5.0`.

</details>

# 0.18.0

![Release Date: 2021-09-12](https://img.shields.io/static/v1.svg?style=flat-square&label=Release%20Date&message=2021-09-12&colorA=4c566a&colorB=88c0d0) [![Project Board](https://img.shields.io/static/v1.svg?style=flat-square&label=Project%20Board&message=0.18.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/nordtheme/vim/projects/24) [![Milestone](https://img.shields.io/static/v1.svg?style=flat-square&label=Milestone&message=0.18.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/nordtheme/vim/milestone/20)

⇅ [Show all commits][106]

## Features

### Syntax

<details>
<summary><strong>Support for <a href="https://github.com/vim-pandoc/vim-pandoc-syntax" target="_blank" rel="noreferrer"><code>vim-pandoc/vim-pandoc-syntax</code></a></strong> — #220 (⊶ 8d8b9bf8) by <a href="https://github.com/tpoisot" target="_blank" rel="noreferrer">@tpoisot</a> and <a href="https://github.com/BirgerNi" target="_blank" rel="noreferrer">@BirgerNi</a></summary>

↠ To improve syntax highlighting for [Pandoc][9], support for the [vim-pandoc/vim-pandoc-syntax][13] plugin has been implemented.
Most groups are linked to existing Markdown groups to ensure a consistent style across languages and different plugins.

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/120067101-1f622180-c07a-11eb-81a0-73414e54df55.png" width="75%" /></p>

</details>

### UI

<details>
<summary><strong>Support for <a href="https://neovim.io/doc/user/lsp.html#lsp-highlight-codelens" target="_blank" rel="noreferrer">LSP code lenses</a></strong> — #266 (⊶ 02ddfadb) by <a href="https://github.com/jan-xyz" target="_blank" rel="noreferrer">@jan-xyz</a></summary>

↠ Before [LSP code lenses][107] were highlighted with the default color which has been changed to make it less visually intrusive, like other UI related elements, e.g. messages of linters.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/13448100/168257661-7c66b447-c3c8-4c0d-8ce7-cc728f1ec870.png" width="75%" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/13448100/168257647-57a84bda-5e19-4ece-a482-a65892065064.png" width="75%" /></p>

</details>

## Improvements

### Syntax

<details>
<summary><strong>Prevent aggressive error highlighting</strong> — #269 ⇄ #270 (⊶ e3e8a75c) by <a href="https://github.com/jan-xyz" target="_blank" rel="noreferrer">@jan-xyz</a></summary>

↠ The `TSError` group is used to [highlight syntax/parser errors][108] which caused an aggressive styling where the background color of many syntax elements was rendered with `nord11` during typing. This is a known problem and was fixed by many other themes by removing the group again. One of the [core maintainers of `nvim-treesitter` provided a solution by remapping groups][110] and also mentioned that the group is [styled by the `nvim-treesitter` plugin but the active theme][109].

Syntax errors can still be highlighted through linters and parsers like [Neovim's LSP][8] can still be used instead to highlight errors with the correct style, e.g. only change the foreground color of a single word.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/13448100/168257438-161d9a9a-55ef-4af1-a6fd-7a0f6298f1d3.png" width="75%" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/13448100/168257433-3f973632-c644-43e6-b971-054ca8eccb39.png" width="75%" /></p>

</details>

# 0.17.0

![Release Date: 2021-07-10](https://img.shields.io/static/v1.svg?style=flat-square&label=Release%20Date&message=2021-07-10&colorA=4c566a&colorB=88c0d0) [![Project Board](https://img.shields.io/static/v1.svg?style=flat-square&label=Project%20Board&message=0.17.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/nordtheme/vim/projects/23) [![Milestone](https://img.shields.io/static/v1.svg?style=flat-square&label=Milestone&message=0.17.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/nordtheme/vim/milestone/19)

⇅ [Show all commits][101]

## Features

### Syntax

<details>
<summary><strong>Support for <a href="https://github.com/nvim-treesitter/nvim-treesitter" target="_blank" rel="noreferrer"><code>nvim-treesitter/nvim-treesitter</code></a></strong> — #235 ⇄ #253 (⊶ b3e712a9) by <a href="https://github.com/s-u-d-o-e-r" target="_blank" rel="noreferrer">@s-u-d-o-e-r</a> and <a href="https://github.com/mrswats" target="_blank" rel="noreferrer">@mrswats</a></summary>

↠ Neovim [version 0.5][102] is a long-time awaited update that introduces features like support for [tree-sitter][105] via [nvim-treesitter][104] and [LSP][7] via [nvim-lspconfig][8].
Even though Neovim divides more and more from Vim through specific features like first-class Lua support with custom APIs, the highlighting for tree-sitter is achieved through “normal“ syntax highlighting groups. Most of the groups are already [linked by the `nvim-treesitter` plugin by default][103] so only a few groups have been adjusted for now to fit the Nord style.

⚠️ Note that this is the first iteration and **it is very likely that there will be inconsistencies compared to the current highlighting when using “normal“ Vim plugins per language**. Please **report any problem** you find so that the support for tree-sitter can be improved continuously!

</details>

# 0.16.0

![Release Date: 2021-06-09](https://img.shields.io/static/v1.svg?style=flat-square&label=Release%20Date&message=2021-06-09&colorA=4c566a&colorB=88c0d0) [![Project Board](https://img.shields.io/static/v1.svg?style=flat-square&label=Project%20Board&message=0.16.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/nordtheme/vim/projects/22) [![Milestone](https://img.shields.io/static/v1.svg?style=flat-square&label=Milestone&message=0.16.0&logo=github&logoColor=eceff4&colorA=4c566a&colorB=88c0d0)](https://github.com/nordtheme/vim/milestone/18)

⇅ [Show all commits][88]

## Features

### API

<details>
<summary><strong>Public API function <code>NordPalette</code> to get Nord colors</strong> — #224 (⊶ 5867535c) by <a href="https://github.com/jandamm" target="_blank" rel="noreferrer">@jandamm</a></summary>

↠ Implemented a new `NordPalette` pubic API function that returns all [Nord colors][87] as dictionary. This allows to use the colors in other Vim scripts without the need to copy & paste the colors from the documentations or the [Nord Vim theme sources][85].

</details>

### Syntax

<details>
<summary><strong>Support for the <a href="https://github.com/StanAngeloff/php.vim" target="_blank" rel="noreferrer">php.vim</a> plugin</strong> — #218, #262 ⇄ #263 (⊶ b3c46c87, 07452c71) by <a href="https://github.com/pirey" target="_blank" rel="noreferrer">@pirey</a></summary>

↠ In [nordtheme/vim#218][84] new highlighting groups for the bundled PHP syntax were added to improve the highlighting of classes, function and methods and the overall syntax token detection, but they are actually defined by the [php.vim][98] plugin. Therefore the added highlighting calls have been moved to a plugin section.
Additionally, the `phpClassExtends` and `phpClassImplements` groups have been added to improve the highlighting for classes that implement or extended interfaces/classes. The `phpUseClass` has also been added to improve the highlighting for imports.

To improve the highlighting with the bundled PHP syntax, the [following options][99] can be set:

```vim
let php_asp_tags = 1
let php_baselib = 1
let php_htmlInStrings = 1
let php_parent_error_close = 1
let php_parent_error_open = 1
```

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/121416382-08b8a600-c969-11eb-9928-10a044568ad6.png" width="75%" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/121416373-06eee280-c969-11eb-8990-4e05f196c295.png" width="75%" /></p>

</details>

<details>
<summary><strong><code>Conceal</code> highlighting group support</strong> — #149, #207, #211, #256 ⇄ #261 (⊶ f3f28b93)</summary>

↠ The `Conceal` group is was not supported which could resulted in rendering problems for (Unicode) characters that require special encoding like the ones from the [Greek alphabet][100] and [mathematical expressions][97] that are often used in [LaTeX][92] or [Pandoc][9] documents. These characters were highlighted with the default background color which made them kind of unreadable with the theme foreground color.
See `:help conceal` and `:help concealcursor` for more details about concealing in Vim.

To fix the problem, the `Conceal` group has been added with its background color set to `NONE` for GUI and terminal mode to either use the terminal default background color or let loaded scripts apply custom styles based on the current runtime context.

The problem has been reported in #149, #207 and #211 with LaTeX and Pandoc being used by the reporters. PR #220 adds support for [vim-pandoc/vim-pandoc-syntax][13] specific highlighting groups and can be merged after adding basic support for `Conceal`.

To get the correct rendering for such elements the following configurations must be set:

```vim
let g:pandoc#syntax#conceal#use = 1
set conceallevel=2
```

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/120046947-a0d29900-c013-11eb-8d4d-fc9f6dd117ad.png" width="75%" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/120046952-a5974d00-c013-11eb-9c03-d73461d92069.png" width="75%" /></p>

</details>

<details>
<summary><strong>Updated highlights for <a href="https://neovim.io/doc/user/lsp.html" target="_blank" rel="noreferrer">Neovim LSP</a> diagnostics</strong> — #229, #248 (⊶ a3af928a) by <a href="https://github.com/gbrlsnchs" target="_blank" rel="noreferrer">@gbrlsnchs</a> and <a href="https://github.com/thallium" target="_blank" rel="noreferrer">@thallium</a></summary>

↠ To ensure compatibility with the latest versions of Neovim LSP the highlighting groups for diagnostics have been adapted to the changes of [neovim/neovim#12655][96].
See [`:help lsp-highlight-diagnostics`][7] for more details.

Note that LSP will be available as of [Neovim 0.5][95] which is (at the time of this commit) still in development and only available as nightly build.
Also see great articles from Nord Vim contributors like [“Neovim (0.5) Is Overpowering“][86] for more information about Neovim 0.5 features, including LSP.

Thanks to [@clason][89], [@crispgm][90] and [@ojroques][91] for the review support!

</details>

### UI

<details>
<summary><strong>Support for the <a href="https://github.com/nathanaelkane/vim-indent-guides" target="_blank" rel="noreferrer">vim-indent-guides</a> plugin</strong> — #186 ⇄ #226 (⊶ ea7ff9c3) by <a href="https://github.com/mitinarseny" target="_blank" rel="noreferrer">@mitinarseny</a></summary>

↠ Added support for the [vim-indent-guides][93] plugin. The even and odd highlighting blocks using `nord1` and `nord2` (`nord3`in terminal mode) to provide a subtle and non-disturbing style.
Note that the [custom theme colors][94] are only applied when the `indent_guides_auto_colors` variable has been set to `0`:

```vim
let g:indent_guides_auto_colors = 0
```

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/95505941-71511c80-09af-11eb-898a-4c7e6396c4d4.png" width="75%" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/95505930-6eeec280-09af-11eb-84bb-2e0b0265b525.png" width="75%" /></p>

</details>

## Improvements

### UI

<details>
<summary><strong><a href="https://github.com/neoclide/coc.nvim" target="_blank" rel="noreferrer">coc.vim</a> error and warning highlighting</strong> — #213 (⊶ 8a9754ce) by <a href="https://github.com/butterywombat" target="_blank" rel="noreferrer">@butterywombat</a></summary>

↠ Added the [coc.nvim][6] highlighting groups for errors and warnings using their respective foreground colors and the `undercurl` font style.

</details>

## Bug Fixes

### UI

<details>
<summary><strong>Typo in group <code>Pmenu</code> group names</strong> — #252 (⊶ e5a54c7f) by <a href="https://github.com/kunzaatko" target="_blank" rel="noreferrer">@kunzaatko</a></summary>

↠ Fixed two typos in `Pmenu` group names:

- `PMenuSel` -> `PmenuSel`
- `PMenu` -> `Pmenu`

This mismatch was never really noticed because most of the time users rely on plugins like [coc.vim][6] or [vim-clap][5] which come with custom highlighting groups and UI libraries.

</details>

# 0.15.0

![Release Date: 2020-07-06](https://img.shields.io/badge/Release_Date-2020--07--06-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.15.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/21) [![Milestone](https://img.shields.io/badge/Milestone-0.15.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/17)

## Features

### Syntax

**Extended support for TypeScript and TSX** — #208 (⊶ 1bd44ade) by [@iamdidev][78]
↠ Added extended support for [TypeScript][83] and [TSX][82] through the [yats.vim][80] plugin.
This provides, among many other good changes, better highlighting for syntax elements like [decorators][81], more granular separation of different language elements within a single code line as well as highlighting for…

<p align="center"><strong>…interfaces with bold font style, typing characters and types.</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84699121-43a01d80-af51-11ea-8ca2-7560791e04f5.png" /></p>

<p align="center"><strong>…global methods like <code>setTimeout</code> with italic font style.</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84700311-3d12a580-af53-11ea-8102-39c86eb54df9.png" /></p>

<p align="center"><strong>…regular expressions with <code>nord13</code> instead of the normal color for quoted strings.</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84700066-dd1bff00-af52-11ea-8876-22eeec81e8a0.png" /></p>

<p align="center"><strong>…global elements like <code>Error</code>, <code>JSON</code> and <code>console</code>.</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84698135-94167b80-af4f-11ea-86e6-29df3bf34c61.png" /></p>

<p align="center"><strong>…brackets of types as structural elements.</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84701261-f2922880-af54-11ea-9779-ba1314480921.png" /></p>

<p align="center"><strong>…TSX/JSX and HTML with a consistent appearance.</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84701503-66cccc00-af55-11ea-80b7-9793fc894284.png" /></p>

### UI

**Support for vim-clap** — #178 (⊶ 7a52f66c) by [@meck][44] and [@ikalnytskyi][79]
↠ Added basic support for [vim-clap][5], a modern and performant generic finder and dispatcher for Vim and NeoVim.

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/86534351-0daee300-bed8-11ea-9685-031d16b5a07b.png" /></p>

# 0.14.0

![Release Date: 2020-06-16](https://img.shields.io/badge/Release_Date-2020--06--16-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.14.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/20) [![Milestone](https://img.shields.io/badge/Milestone-0.14.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/16)

## Features

### UI

**Basic support for nvim-lsp (Language Server Protocol)** — #198 (⊶ 0ccf70b6) by [@alexanderjeurissen][74]
↠ Added basic support for [nvim-lsp][76], a collection of common configurations for the NVim language server protocol client.

## Improvements

### UI

**Consistent error highlighting between GUI and terminal mode** — #202 (⊶ 974a9190) by [@xulongwu4][75]
↠ The highlighting of errors in GUI and _true color_ terminal mode now also uses `nord4` as foreground color of instead of `nord0`.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84657802-25b4c780-af15-11ea-9c28-a7f2262d4c97.png" /></p>
<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84657801-251c3100-af15-11ea-9c8a-84f63bafb866.png" /></p>

**Improved highlighting for “More“ separator** — #202 (⊶ 974a9190) by [@xulongwu4][75]
↠ The highlighting of the _More_ separator is now highlighted with the `nord8` accent color.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84657821-2cdbd580-af15-11ea-9491-2fe5d6f7948f.png" /></p>
<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84657816-2c433f00-af15-11ea-9f22-f0d1296ae6e8.png" /></p>

**Transparent line number and cursor line background by default** — #204 (⊶ 6323f662) by [@xulongwu4][75]
↠ Before the background color of the `LineNr` and `CursorLineNr` highlighting groups were set to `nord0` which was fine in most cases, but conflicted with plugins like [Yggdroot/LeaderF][77] that renders line numbers in a popup windows with a different background color.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84664806-58fc5400-af1f-11ea-9fc9-c05264cca064.png" /></p>
<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/84664799-57cb2700-af1f-11ea-9099-75eba70fad36.png" /></p>

# 0.13.0

![Release Date: 2019-12-17](https://img.shields.io/badge/Release_Date-2019--12--17-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.13.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/19) [![Milestone](https://img.shields.io/badge/Milestone-0.13.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/15)

## Features

### UI

**Support uniform status line background configuration for _vim-airline_ and _lightline.vim_ themes** — #168 ⇄ #169 (⊶ 73b3d340) by [@jmurinello][66]
↠ Added support for the [uniform status line][73] theme configuration, [introduced in version 0.7.0][63] through [nordtheme/vim#58][62], for the bundled _vim-airline_ and _lightline.vim_ themes.

<p align="center"><code>lightline.vim</code></p>
<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/16728775/61186256-340fb900-a69e-11e9-8887-b153b869de5c.png" /></p>
<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/16728775/61186259-38d46d00-a69e-11e9-9d2f-bf72f6b2af14.png" /></p>

<p align="center"><code>vim-airline</code></p>
<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/16728775/61186260-3f62e480-a69e-11e9-9fcd-48b53307d97a.png" /></p>
<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/16728775/61186263-438f0200-a69e-11e9-8028-eee21ff3ceb0.png" /></p>

**Basic support for coc.vim (Conquer of Completion)** — #164 (⊶ a7797269) by [@hennessey][65]
↠ Added basic support for [coc.nvim][6], a _Intellisense_ engine for Vim 8 & NeoVim with full language server protocol support.

**Basic support for _vim-startify_** — #159 ⇄ #176 (⊶ 38ab4a9c)
↠ Added basic support for [vim-startify][69] with custom highlight groups.

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/66123513-86e47700-e5e2-11e9-9fa8-e41dc07efc82.png" /></p>

## Improvements

### UI

**No underlined style for gutter line numbers** — #174 ⇄ #185 (⊶ 0d352c4b) by [@nixtrace][67] and [@alexandremjacques][64]
↠ [Vim version 8.1.2029][71] added the [`underline` attribute for the `CursorLineNr` group to `cterm`][70] based on [vim/vim#4933][72].
This change resulted in gutter line numbers being underlined which has now been reverted back to Nord's style by explicitly setting the attribute for the group to `NONE`.

<p align="center"><strong>Before</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/70994055-a19c9700-20cd-11ea-94bb-fdc6f5ae32fc.png" /></p>

<p align="center"><strong>After</strong></p>
<p align="center"><img src="https://user-images.githubusercontent.com/7836623/70994054-a1040080-20cd-11ea-9ef9-890120ab1651.png" /></p>

## Bug Fixes

### Documentation

**Fix missing whitespace** — #165 (⊶ 81d80e4a) by [@vasilescur][68]
↠ Fixed a missing whitespace in the README project description.

# 0.12.0

![Release Date: 2019-05-25](https://img.shields.io/badge/Release_Date-2019--05--25-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.12.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/18) [![Milestone](https://img.shields.io/badge/Milestone-0.12.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/14)

## Features

**Nord Docs Transition** — #158, #144 ⇄ #160 (⊶ 7be26147)
↠ Transferred all documentations, assets and from „Nord Vim“ to [Nord Docs][1]
Please see the [corresponding issue in the Nord Docs repository][60] to get an overview of what has changed for Nord Vim and what has been done to migrate to Nord Docs.

###### Landing Page

<p align="center"><a href="https://www.nordtheme.com/ports/vim" target="_blank"><img src="https://user-images.githubusercontent.com/7836623/58123747-d1092500-7c0c-11e9-8ea1-d8a97b592acb.png" alt="Preview: Nord Vim Port Project Landing Page"/></a></p>

###### Landing Page Docs

<p align="center"><a href="https://www.nordtheme.com/docs/ports/vim" target="_blank"><img src="https://user-images.githubusercontent.com/7836623/58123746-d1092500-7c0c-11e9-990d-6e65d20cd935.png" alt="Preview: Nord Vim Docs Project Landing Page"/></a></p>

###### Installation & Activation Docs

<p align="center"><a href="https://www.nordtheme.com/docs/ports/vim/installation" target="_blank"><img src="https://user-images.githubusercontent.com/7836623/58123745-d1092500-7c0c-11e9-82d8-e1d60fc0d725.png" alt="Preview: Nord Vim Docs Installation & Activation Docs Page"/></a></p>

###### Configuration Docs

<p align="center"><a href="https://www.nordtheme.com/docs/ports/vim/configuration" target="_blank"><img src="https://user-images.githubusercontent.com/7836623/58123743-d0708e80-7c0c-11e9-9149-a3f023104b1c.png" alt="Preview: Nord Vim Docs Configuration Docs Page"/></a></p>

###### Customization Docs

<p align="center"><a href="https://www.nordtheme.com/docs/ports/vim/customization" target="_blank"><img src="https://user-images.githubusercontent.com/7836623/58123744-d0708e80-7c0c-11e9-84c7-50275e2696e1.png" alt="Preview: Nord Vim Docs Configuration Docs Page"/></a></p>

**Theme configuration for bold font style rendering** — #143 ⇄ #161 (⊶ 18a4e350) requested by [@tobydeh][59]
↠ Added a new [`nord_bold` theme configuration to allow to explicitly toggle bold font rendering styles][61].
It is enabled by default when running for both in GUI and terminal mode since most terminals and shells are capable to handle bold fonts.

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/58366170-a9e17a80-7ece-11e9-9b2d-e57d6fa574f6.png" /></p>

## Improvements

**Active match for increment search** — #139 ⇄ #140 (⊶ de24841a) by [@aborzunov][58]
↠ The currently active match during increment searches (`IncSearch`) is now highlighted differently (`nord10` as background and `nord6` as foreground) than inactive matches for a better visual distinction.

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/56081041-05691480-5e09-11e9-97e6-9220bdf5d030.png" /></p>

# 0.11.0

![Release Date: 2019-04-18](https://img.shields.io/badge/Release_Date-2019--04--18-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.11.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/16) [![Milestone](https://img.shields.io/badge/Milestone-0.11.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/13)

## Features

### Syntax

**Basic support for Asciidoc syntax highlighting** — #131 ⇄ #152 (⊶ 6e6025b9) by [@tidux][46]
↠ Added basic syntax highlighting support for [Asciidoc][39] that comes bundled with Vim 8.

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/56083880-1165ce00-5e2b-11e9-9389-f21435942464.png" /></p>

**Basic syntax highlighting support for Rust** — #138 ⇄ #154 (⊶ b0ffc6b5) by [@TerminalWitchcraft][45]
↠ Added basic syntax highlighting support for [Rust][55].

[Traits][54] and [enums][51] are colorized with `nord7` and with bold font to make them visually stand out more.
Also [attributes][49] and [derives][50] are colored with `nord10`.

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56096828-3a4e9780-5eed-11e9-9d74-02b498a78ab1.png" /></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56096827-3a4e9780-5eed-11e9-8275-c97b2569f959.png" /></p>

[Macros][53] are colorized with `nord8` and bold font to make them visually different from "normal" functions.

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56096834-463a5980-5eed-11e9-8d98-bbc814506779.png" /></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56096839-4df9fe00-5eed-11e9-8d8c-9a488105b0e9.png" /></p>

[Escape][52] sequences are colored with `nord13`.

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56096843-58b49300-5eed-11e9-9bb2-5541b3d68689.png" /></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56096842-58b49300-5eed-11e9-9ab6-52b709119c81.png" /></p>

Import statements and paths are correctly colored with keyword and type colors.

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56096847-623dfb00-5eed-11e9-91c3-cfe7621a2e5b.png" /></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56096846-623dfb00-5eed-11e9-9cce-30f14bdc7e57.png" /></p>

#### Plugin Support

**Haskell Syntax Plugin Support** — #104 ⇄ #150 (⊶ b0ffc6b5) by [@vabatta][47]
↠ Added support for Haskell syntax through the [neovimhaskell/haskell-vim][48] plugin.
This includes better coloring for types/classes using `nord7` instead of highlighting them like keywords (`nord9`) and pre-processor and pragma elements are now colorized correctly with `nord10`.

#### Pragma

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56079623-6ee02780-5df7-11e9-8cfc-f3f62b1a79d4.png"/></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56079622-6e479100-5df7-11e9-9b80-650875c7fd55.png"/></p>

#### Pre-Processor

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56079625-6ee02780-5df7-11e9-9429-0ef098f31fb2.png"/></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56079624-6ee02780-5df7-11e9-8b85-33e624121d1e.png"/></p>

#### Types/Classes

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56079627-6ee02780-5df7-11e9-94c7-68952bfc1600.png"/></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56079626-6ee02780-5df7-11e9-904f-6fd27129c0f7.png"/></p>

### UI

**Theme config for bolder vertical split line** — #132 ⇄ #153 (⊶ 9059d7d8) by [@huyvohcmc][42]
↠ Previously the [`VertSplit`][57] (`:help VertSplit`) key used `nord1` as background color by default making the line appear to be very lumpy. This has now been changed to use `nord0` as background instead to visually merge with the background so only the separator characters are a visual indicator for the split line which makes it look more lightweight and declutters the overall appearance.

<p align="center"><strong>With base editor background (default)</strong><img src="https://user-images.githubusercontent.com/7836623/56088648-8e259600-5e85-11e9-8a6f-2c03d26eff4b.png" /></p>

<p align="center"><strong>With enabled bold <code>nord1</code> background</strong><img src="https://user-images.githubusercontent.com/7836623/56088647-8e259600-5e85-11e9-8be5-d86232ca8278.png" /></p>

To allow user who liked the previous implementation to keep the style a new `nord_bold_vertical_split_line` theme config was also added that can be assigned to `1` to achieve the legacy design.

```viml
let g:nord_bold_vertical_split_line = 1
```

The README includes information and hints how to change the separator character by customizing Vim's [`fillchars`][56] (`:help fillchars`) variable.

#### Plugin Support

**`:terminal` status line in airline** — #134 (⊶ be815f09) by [@meck][44]
↠ Added support for Vim's new `:terminal` mode in [airline][4].

<p align="center"><strong>Before: No <code>:terminal</code> support (before)</strong><img src="https://user-images.githubusercontent.com/7836623/56088997-ce881280-5e8b-11e9-9758-7c13c559b05c.png" /></p>

<p align="center"><strong>After: Support for airline's new <code>_term</code> theme keys</strong><img src="https://user-images.githubusercontent.com/7836623/56088996-ce881280-5e8b-11e9-839b-bc282f1fea0b.png" /></p>

## Improvements

### Syntax

**Better generator expressions in CMake** — #137 ⇄ #151 (⊶ d2774cbb) by [@markand][43]
↠ [CMake generator expressions][40] are now highlighted using `nord10` as foreground instead of `nord13` as background and `nord0` as foreground.

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56079970-99cc7a80-5dfb-11e9-9528-83bbe92c51d3.png"/></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56079969-99cc7a80-5dfb-11e9-8afa-68c7878521c4.png"/></p>

### UI

#### Plugin Support

**airline warnings and errors** — #130 (⊶ e85dbe75) by [@axelitus][41]
↠ Added support for error and warning elements of [airline][4].

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/56093512-f7c79380-5ec9-11e9-8107-a2d59b306ee0.png" /></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/56093511-f7c79380-5ec9-11e9-8be8-731fa0e52fc2.png" /></p>

**ALE error and warning support** — #135 (⊶ 9d82b7a1) by [@meck][44]
↠ Added support highlighting and underlines for [ALE][10] errors and warnings to also align the style with gutter signs.

# 0.10.0

![Release Date: 2019-03-21](https://img.shields.io/badge/Release_Date-2019--03--21-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.10.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/15) [![Milestone](https://img.shields.io/badge/Milestone-0.10.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/12)

## Features

**Vim 8 terminal highlighting** — #125 ⇄ #126 (⊶ 83f8c260) by [@cg433n][38]
↠ Added support for the Vim's built-in terminal (`:terminal`) that comes with version 8.0.0 and higher.

## Improvements

**Comment Color Brightness** — #145 ⇄ #146 (⊶ 9e0249ca)
↠ Implemented the increase of the comment color (`nord3`) brightness by 10% from a lightness level of ~35% to ~45%.

➜ **Please see [nordtheme/nord#94][36] for all details about this design change decision**!

⚠ **NOTE**: This change also **deprecates the [comment contrast][11] configuration** that will be removed in Nord Vim version 1.0.0!
The default comment color has been adjusted so the configuration is not required anymore for users to increase the brightness on their own.
To notify users about this change a deprecation warning will be shown when the `g:nord_comment_brightness` configuration variable has been set and initialized through the user's configuration.

**Improved compatibility of airline with tmuxline.vim plugin** — #117 ⇄ #128 (⊶ 3150628f)
↠ The [Nord airline.vim][4] UI plugin theme now includes better support for the [tmuxline.vim][37] plugin. Previously text shown in the main segment of the _tmuxline_, generated via the `:Tmuxline airline` command, caused a `bad colour: NONE` error or has been colorized using `nord0` which resulted in unreadable text due to a `nord3` background.

This has been fixed by using `nord5` as foreground color. …[#11][34] was used as implementation reference since it fixed the same incompatibility for the [lightline.vim][35] plugin.

![](https://user-images.githubusercontent.com/7836623/41835439-e3f2388c-7857-11e8-91e0-a0440b7ecf35.png)

# 0.9.0

![Release Date: 2018-06-24](https://img.shields.io/badge/Release_Date-2018--06--24-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.9.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/13) [![Milestone](https://img.shields.io/badge/Milestone-0.9.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/11)

## Features

### Syntax

#### Plugin Support

❯ Added support for the [YAML][33] plugin [stephpy/vim-yaml][29] which improves the highlighting for keys to match the JSON syntax style. (PR #120, @mdzhang, b1478b07)

<p align="center"><p><strong>Before</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816223-b5b7df7c-777f-11e8-85ba-ac945b68e751.png" /></p>

<p align="center"><p><strong>After</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816222-b5a091c8-777f-11e8-9db9-38b96e8a3eb1.png" /></p>

❯ Added basic syntax highlighting support for [vimwiki][30]. (PR #98 in PR #114, @smesko85, 9e7addbc)

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/41807872-85a56eee-76d5-11e8-9dd3-8319f7dae829.png" /></p>

### UI

❯ Added a new [configuration to allow users to enable background for the line number of the current line][31]. It can be enabled by setting the `g:nord_cursor_line_number_background` variable to `1`. (PR #100, @andrepolischuk, 035e36de)

```vim
let g:nord_cursor_line_number_background = 1
```

<p align="center"><strong>No background (default)</strong><br><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-config-cursor-line-number-background-default.png" /></p>

<p align="center"><strong>Enabled background</strong><br><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-config-cursor-line-number-background.png" /></p>

❯ Added a new [configuration to allow users to globally toggle underlines][32] for cases where the terminal emulator might not be capable to handle underlines in terminal mode. It can be enabled by setting the `g:nord_underline` variable to `1`. (#106 in PR #127 (supersedes #109), @dylnmc @markand , 01cfd1be)

<p align="center"><strong>Underlined Text</strong><br><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-config-underline.png"/></p>

❯ Added support for the status line of the `:terminal` window mode for Vim or Neovim. (PR #108 (supersedes #103), @dylnmc, 922504fb)

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/41812738-86c84262-7728-11e8-8bf4-476eb99e892e.png" /></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/41812737-86b2def4-7728-11e8-9d8a-9976038dda92.png" /></p>

#### Plugin Support

❯ Added highlighting support for the navigation marks in the sign column of the [kshenoy/vim-signature][28] plugin. (PR #122, @kooparse, 1df39453)

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/41816354-1133d24a-7783-11e8-8242-0e7d4c3b555c.png" /></p>

## Improvements

### Syntax

❯ Added highlighting for the JavaScript keyword `this`. (PR #119, @kristijanhusak, 4fe2d43e)

<p align="center"><p><strong>Before</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816139-3c6f145c-777d-11e8-8f5b-58f122dc5050.png" /></p>

<p align="center"><p><strong>After</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816138-3c578198-777d-11e8-83f0-62f7aad0ce13.png" /></p>

### UI

❯ The cursor is now correctly shown and visible when leaving a terminal window from within Vim or Neovim by adding the `TermCursorNC` group. (PR #101, @meck, 2fac9fa0)

❯ The „inline marker“ in unified _diffs_ is now colorized differently than the background of the changed line to make the changes better and faster recognizable. This applies for both the [uniform _diff_ background mode][12] and normal _diff_ mode. (PR #121, @ironhouzi, 65c559ee)

<p align="center"><p><strong>Before/After comparison of default <em>diff</em> mode</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816510-4d548a90-7787-11e8-9fbd-9ae572763c22.png" /><br><img src="https://user-images.githubusercontent.com/7836623/39664393-e75f52b8-5082-11e8-8bb0-ba19c11dd391.png" /></p>

<p align="center"><p><strong>Before/After comparison of uniform <em>diff</em> mode</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816511-4d6aeb82-7787-11e8-90b4-f7c67ad9d952.png" /><br><img src="https://user-images.githubusercontent.com/7836623/39699476-acb7e1ca-51f9-11e8-9eca-8efc44b184f7.png" /></p>

## Bug Fixes

### UI

❯ The current line number's color is now highlighted correctly in terminal mode. Previously it was only highlighted when running in GUI mode or when `termguicolors` has been set. (#116 in 50ec737b (PR #100), @huyvohcmc @dylnmc)

<p align="center"><p><strong>Before</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816653-d62d808a-778a-11e8-8bce-d1f76a1e6fae.png" /></p>

<p align="center"><p><strong>After</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816652-d61787bc-778a-11e8-9371-c0bfd852f491.png" /></p>

# 0.8.0

![Release Date: 2018-01-05](https://img.shields.io/badge/Release_Date-2018--01--05-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.8.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/11) [![Milestone](https://img.shields.io/badge/Milestone-0.8.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/10)

## Features

### Plugin Support

#### UI

❯ Added support for [vim-signify][27]. (PR #81, @dabio, edcdd0e4)

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/34623682-a7b7e960-f252-11e7-9194-c82aff310a75.png"/></p>

## Improvements

### UI

❯ The color of links in `:help` was the same as normal text making it impossible to to distinguish between both. This has been improved by using `nord8` including the help bars when enabled with `:set conceallevel=2`. (#85 in PR #93, @delphinus, e9974fe6)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34460697-25f5be7e-ee16-11e7-9c57-32bb2ec15314.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/34460700-35bddeea-ee16-11e7-976b-e00cfe80c462.png"/></p>

### Documentation

❯ The lightline screenshots in the documentation have been made using the [lightline's advanced configurations][26]. This confused users when the lighline does not equal the one seen on the screenshot due to the default lightline configuration. This has now been clarified including a additional screenshot showing the appearance of the lightline when using the default configuration. (#74 in PR #94, @lokesh-krishna, 3c14c961)

<p align="center"><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-plugin-support-ui-lightline-default.png"/></p>

## Bug Fixes

❯ The background color for matching parens is now assigned to the right color `nord3` instead of `nord0` in GUI mode. (#95 in PR #96, @dylnmc, 8bc1be01)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34619232-cd9ea512-f241-11e7-8045-e4ac695d56bb.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/34619246-dc2bee0a-f241-11e7-9ce6-c3d51ed6ec75.png"/></p>

# 0.7.0

![Release Date: 2017-12-30](https://img.shields.io/badge/Release_Date-2017--12--30-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.7.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/10) [![Milestone](https://img.shields.io/badge/Milestone-0.7.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/9)

## Features

❯ Added a new [configuration to allow users to increase the comment brightness][11] by 1 - 20 percent. It can be enabled by setting the `g:nord_comment_brightness variable` to a number between `1` and `20`. (#48 in PR #56, @drzel, e18ab4e8)

**This option should only be enabled if the terminal supports 24bit true color (16 million colors) and requires the `termguicolors` option to be set is in `~/.vimrc` or via `:set termguicolors`!**

<p align="center"><strong>Default and 15% increased</strong><br><img src="https://user-images.githubusercontent.com/7836623/30772939-a65c92b6-a066-11e7-92f2-2f7089fe7700.png"/><br><img src="https://user-images.githubusercontent.com/7836623/30772941-b85577d0-a066-11e7-9c64-b9dab6736034.png"/></p>

<p align="center"><strong>Default and 12% increased</strong><br><img src="https://user-images.githubusercontent.com/7836623/30772949-ea459978-a066-11e7-8092-9e6522f9b7bf.png"/><br><img src="https://user-images.githubusercontent.com/7836623/30772950-eb8c2c84-a066-11e7-92d2-a64ac5f20521.png"/></p>

To adhere to the Nord design guidelines this option uses `nord3` by default.

This is a reference table if users like to use the same increased contrast values as provided by the [Nord Atom Syntax accessibility custom comment contrast theme setting][19] which are calculated using the LESSCSS [`lighten`][18] function.

| Increased by | Calculated value |
| ------------ | ---------------- |
| 1%           | `#4e586d`        |
| 2%           | `#505b70`        |
| 3%           | `#525d73`        |
| 4%           | `#556076`        |
| 5%           | `#576279`        |
| 6%           | `#59647c`        |
| 7%           | `#5b677f`        |
| 8%           | `#5d6982`        |
| 9%           | `#5f6c85`        |
| 10%          | `#616e88`        |
| 11%          | `#63718b`        |
| 12%          | `#66738e`        |
| 13%          | `#687591`        |
| 14%          | `#6a7894`        |
| 15%          | `#6d7a96`        |
| 16%          | `#6f7d98`        |
| 17%          | `#72809a`        |
| 18%          | `#75829c`        |
| 19%          | `#78859e`        |
| 20%          | `#7b88a1`        |

More information about true color and the support in various terminals can be found in [this gist][16].

❯ Added a new [configuration for a uniform _diff_ background color][12]. (#60 in PR #61 #62 #65, @dylnmc @aidanharris @berkin, 958322d0)

![](https://user-images.githubusercontent.com/7836623/30969227-0dbcb982-a462-11e7-86a8-a69e91ff7bc0.png)

Setting `g:nord_uniform_diff_background` to `1` enables the uniform diff background using `nord1`:

![](https://user-images.githubusercontent.com/7836623/30969233-12a37d64-a462-11e7-8253-3c083eba5174.png)

❯ Added a new [configuration to use uniform activate- and inactive status line backgrounds][24]. (#37 in PR #58, @dylnmc @DenniJensen, 93056802)

<p align="center"><strong>Default status lines</strong><br><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-config-uniform-status-lines-default.png"/></p>

<p align="center"><strong>Uniform status lines</strong><br><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-config-uniform-status-lines.png"/></p>

❯ Added a new [configuration to explicitly enable italic text formatting][23]. (#88 in PR #89, @lokesh-krishna @dylnmc, dbfc55ff)

**Please note that this option should only be enabled if the used terminal supports italics!**

<p align="center"><strong>With enabled option for italic comments</strong><br><img src="https://user-images.githubusercontent.com/7836623/34433722-6c7f0a4e-ec81-11e7-8af9-ebc227b6535e.png"/></p>

<p align="center"><strong>Markdown syntax styling</strong><br><img src="https://user-images.githubusercontent.com/7836623/34455900-697cbb6c-ed89-11e7-8c2b-29ec7dbcd703.png"/></p>

❯ Added support for NeoVim UI terminal colors. (#63, @meck, af01167b)

### Plugin Support

#### Syntax

❯ Added support for the [plasticboy/vim-markdown][21] syntax plugin to match the style of the built-in markdown syntax styles. (#45 in PR #57, @VVVFO, 09921268)

![](https://user-images.githubusercontent.com/7836623/30773618-63ffde56-a074-11e7-9452-121283afcb44.png)

![](https://user-images.githubusercontent.com/7836623/30773619-657ec968-a074-11e7-80ba-c1cf3a3c19b0.png)

#### UI

❯ Added support for the `PlugClean` command of the [junegunn/vim-plug][20] plugin which used the `Ignore` group by default for deleted directory listings resulting in unreadable text when `cursorline` has been set. (#43 in PR #59, @dylnmc, e532b5d6)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/30959403-53d9cd0a-a440-11e7-8c38-3045e280131a.gif"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/30959419-618876ea-a440-11e7-8895-6e9acfd8b830.gif"/></p>

❯ Added basic support for [tpope/vim-fugitive][22]. (#76 in PR #77, @anhari, fa09c3b1)

Filenames are now highlighted when using the `:Gstatus` command.

![](https://user-images.githubusercontent.com/6628875/33404056-def50276-d530-11e7-8e76-5733f58f7139.gif)

## Improvements

### Syntax

❯ Added highlight support for legacy _diff_ groups `diffAdded` and `diffRemoved` of the `git.vim` and `diff.vim` syntx definitions. (#66 in PR #67, @brandoniffert, 99e59e67)

These groups are not in the [official vim documentation][25] but are still used by the syntax for example when run with `git commit --verbose`.

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/32219558-d906cf5c-be2e-11e7-98e7-d22583bac4f0.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/32219588-f00e0c4c-be2e-11e7-91e7-87bb28c48721.png"/></p>

❯ Added highlighting support for Markdown _italic_ and **bold** delimiter. (#90 in PR #92, 97c8aa24)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34452697-fd3d6502-ed45-11e7-9ba1-8e19e032c009.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/34452755-ee8046a0-ed46-11e7-8f3d-b9567995a9b4.png"/></p>

❯ Added missing Markdown _italic_ and **bold** groups. (#84 in PR #91, @lokesh-krishna @dylnmc, 63b46125)

❯ Improved the highlighting for matching parens. (#75 and #71 in PR #78, @vincentzhezhang @cryptomaniac512 @dylnmc, 8eb7b2a6)

The background color intensity under the cursor was too bright and the cursor no more visible causing the user to be distracted to focus on the matching bracket instead of the bracket at the cursor position.

To optimally improve the highlighting `nord3` will now be used as background color for the matching element which doesn't conflict with the `cursorline` color and also stands out in order to see the matching element.

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34409455-3370fada-ebca-11e7-9ed8-d83c3a9c5055.png"/></p>

<p align="center"><strong>After with <code>cursorline</code> option</strong><br><img src="https://user-images.githubusercontent.com/7836623/34409567-d8c64bfc-ebca-11e7-919a-1a40cf146084.png"/></p>

<p align="center"><strong>After without <code>cursorline</code> option</strong><br><img src="https://user-images.githubusercontent.com/7836623/34409570-dec9c1aa-ebca-11e7-8e68-32b79ec0d7c9.png"/></p>

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/34409581-eddcefc8-ebca-11e7-9ab7-29b80704d836.gif"/></p>

## Bug Fixes

❯ _TODO_ keywords are now highlighted correctly for Neovim and gVim (#52 in PR #53, @dylnmc, 063620f0)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/30737840-4c8014e0-9f88-11e7-9a26-7dea066e3316.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/30737858-5a7be150-9f88-11e7-9053-2aa75787a76d.png"/></p>

❯ Fixed invisible inactive lightline bars (PR #73, @dylnmc, 788876b8)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7635158/32986925-d6a79234-ccaa-11e7-9561-43daffa1722c.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7635158/32986927-e41880f4-ccaa-11e7-9444-316958ec74c1.png"/></p>

❯ Fixed the `WildMenu` background color for current selection (tab completion) not being visible. (#64 in PR #80, @markand, 53fce0db)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/33609457-76d72fce-d9c8-11e7-9048-d2c6c7ed7800.gif"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/33609464-806ee55e-d9c8-11e7-8020-58030141fac3.gif"/></p>

## Tasks

❯ Added the included [lightline theme to the official lightline repository][17]. (#68 in [itchyny/lightline#257][17], @lokesh-krishna, itchyny/lightline@e69081c1370a57647e05df21b60a4ef092c3ce91)

### Documentation

❯ Migrated to the MIT license to adapt to the migration of the main [Nord][3] project. Detailed information can be found in the [main task ticket][15]. (#69 in PR #70, fa55dc35)

# 0.6.0

![Release Date: 2017-08-03](https://img.shields.io/badge/Release_Date-2017--08--03-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.6.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/9) [![Milestone](https://img.shields.io/badge/Milestone-0.6.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/8)

## Features

### Plugin Support

#### UI

❯ Added basic support for [CtrlP][14]. (PR #33, @syedelec)

- Matched characters are using the keyword color instead of the normal text color to make matched characters visible
- Already opened buffers now take the normal text color instead of the comment color

❯ Added basic support [ALE][10]. (PR #44, @meck)

- Warning signs are colorized using a `nord13` foreground
- Error signs are colorized using a `nord11` foreground instead of a red background with a white foreground

## Improvements

### UI

❯ The fold marker foreground has been adjusted to match the comment color instead of `nord1` which has been too dark causing them to be unreadable in bright environments. The background color has also been changed to `nord1` to differ from normal comments and the font style is now bold for better legibility. (#38 in PR #40, @dylnmc)

![](https://user-images.githubusercontent.com/7836623/28256249-ad23fa02-6ac0-11e7-873d-584303677662.png)

❯ The highlight text of a active substitute search result is now underlined in order to make it more recognizable. (#35 in PR #41, @KevinSjoberg)

![](https://user-images.githubusercontent.com/7836623/28245896-ebd3abae-6a10-11e7-9e83-85b69cb62455.gif)

#### Neovim

❯ Addded support for the Neovim specific `:CheckHealth` status highlight groups. (#31 in PR #42, @syedelec, Thanks to @dylnmc)

<p align="center"><strong>Before</strong<br><img src="https://user-images.githubusercontent.com/7836623/28258007-150c94d6-6acf-11e7-92ee-c830e26067e4.png"/><br><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/28258017-21c124a8-6acf-11e7-9e93-dfacf0ad8b15.png"/></p>

## Bug Fixes

### UI

❯ Fixed unreadable text color on pending search result highlights. (#32 in PR #39, @syedelec)

<p align="center">Before<br><img src="https://user-images.githubusercontent.com/7836623/28238074-20069028-694c-11e7-985f-f46f8c343ac5.png"/><br>After<br><img src="https://user-images.githubusercontent.com/7836623/28238077-297ccec4-694c-11e7-91cf-dcaae7aefb6d.png"/></p>

# 0.5.0

![Release Date: 2017-04-17](https://img.shields.io/badge/Release_Date-2017--04--17-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.5.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/8) [![Milestone](https://img.shields.io/badge/Milestone-0.5.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/7)

## Improvements

### Language Support

❯ Implemented optimized styles for Ruby (@hahuang65, #29, 085c1337)

- Symbols (`rubySymbol`) now have a bold font style
- Block parameter list symbols (`rubyBlockParameterList`) are now colorized as keywords
- Local (variable) methods (`rubyLocalVariableOrMethod`) are now colorized as methods

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/25083146/af02dd0a-2355-11e7-8adc-f53b0803a484.png"/></p>

## Bug Fixes

### Documentation

❯ Fixed a typo in the project description. (@svengreb, #28, b2134029)

# 0.4.0

![Release Date: 2017-02-23](https://img.shields.io/badge/Release_Date-2017--02--23-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.4.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/7) [![Milestone](https://img.shields.io/badge/Milestone-0.4.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/6)

## Features

### Configurations

❯ Added a configuration to enable [italic comments](https://github.com/nordtheme/vim#italic-comments).
To adhere to the Nord style guide this option is disabled by default. It can be enabled by setting the `g:nord_italic_comments` variable to `1`.

```vim
let g:nord_italic_comments = 1
```

(@kepbod, #13 (PR #16), dc6149f4)

## Improvements

### Plugin Support

❯ The method/function signature live preview of the [`jedi-vim`](https://github.com/davidhalter/jedi-vim) plugin is now colorized correctly. (@mkalinski, #14, a5c3459a)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/22618347/4857d88e-eada-11e6-9696-83a8886f5771.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/22618354/63ddffde-eada-11e6-8a60-52a39642728e.png"/></p>

### Language Support

❯ Implemented optimized styles for the Python syntax group `pythonEscape`. (@mkalinski, #22, 360a76ea)
![ghi-22-scrot-pythonescape](https://cloud.githubusercontent.com/assets/7836623/22618370/ad74e7fc-eada-11e6-89f2-23b351e8aa2b.png)

❯ Implemented optimized styles for the SQL syntax groups `sqlSpecial` which is now linked to the `sqlKeyword` group to colorize constants like `true`/`false` and `null` as keywords. (@mkalinski, #23, dcfb441e)

# 0.3.0

![Release Date: 2017-01-24](https://img.shields.io/badge/Release_Date-2017--01--24-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.3.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/6) [![Milestone](https://img.shields.io/badge/Milestone-0.3.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/5)

## Improvements

### Plugin Support

❯ The [Nord lightline.vim][2] UI plugin theme now includes better support for the [tmuxline.vim](https://github.com/edkolev/tmuxline.vim) plugin. Before this implementation text shown in the main segment of the tmuxline, generated via the `:Tmuxline lightline` command, has been colorized using `nord0` which resulted in unreadable text due to a `nord3` background.
This has been fixed by using `nord5` as foreground color. (@scottwillmoore, #11, 4ea37f7e)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/9512557/21741900/4f792f5e-d537-11e6-9e69-09ff11b60c4e.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954034/15b87d1e-da47-11e6-9e70-a74aea14c378.png"/><br><strong>With unicode separators</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954058/7a7c5266-da47-11e6-8f1f-0203d5270c51.png"/><br><strong>Without specified configurations (tmuxline.vim autodetect)</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954072/931669e2-da47-11e6-8db3-cbdf9d6681f1.png"/></p>

## Bug Fixes

### Documentation

❯ Fixed a typo in the [README installation guide](https://github.com/nordtheme/vim#via-pluginruntimepath-manager) for Vundle. (@kepbod, #10, 29145bbb)

# 0.2.0

![Release Date: 2017-01-02](https://img.shields.io/badge/Release_Date-2017--01--02-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.2.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/5) [![Milestone](https://img.shields.io/badge/Milestone-0.2.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/4)

## Improvements

❯ Characters under block cursors are now colored darker (`nord0`) while the block cursor is visible to achieve a optimal contrast and to avoid unreadability due to the same cursor- and foreground color (`nord4`). (@svengreb / @scottwillmoore, #9, 30e1f7e3)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586772/f08a56d2-d0d4-11e6-84e0-37e3021317ad.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586785/23ef246c-d0d5-11e6-8573-2e0d8391186c.gif"/></p>

❯ The background color of visual mode selections is now colored in `nord1` instead of `nord3` to avoid a color collision with comments which has led to unreadable text.(@scottwillmoore, #7, bdb209f5)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588201/c8aa75ba-d0e4-11e6-9426-96bfab1c545f.gif"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588207/d67f29b0-d0e4-11e6-8eba-117f38a9c073.gif"/></p>

# 0.1.2

_2017-01-01_

![Release Date: 2017-01-01](https://img.shields.io/badge/Release_Date-2017--01--01-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.1.2-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/4) [![Milestone](https://img.shields.io/badge/Milestone-0.1.2-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/3)

## Bug Fixes

❯ Fixed a bug where the `g:colors_name` variable has been unset caused by the `syntax reset` call due to the execution
order. (@shuei72, #5, f8ffce24)

# 0.1.1

![Release Date: 2016-12-26](https://img.shields.io/badge/Release_Date-2016--12--26-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.1.1-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/3) [![Milestone](https://img.shields.io/badge/Milestone-0.1.1-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/2)

## Bug Fixes

❯ Fixed wrong color variables (`*_term` to `*_gui`) for the `guisp` attribute of all `Spell*` highlighting groups which caused error logs while loading `vim`/`gvim`/MacVim. (@kamwitsta, #4, 4d642b9b)

# 0.1.0

![Release Date: 2016-12-25](https://img.shields.io/badge/Release_Date-2016--12--25-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.1.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/projects/2) [![Milestone](https://img.shields.io/badge/Milestone-0.1.0-88C0D0.svg?style=flat-square)](https://github.com/nordtheme/vim/milestone/1)

## Features

Detailed information about features, supported plugins/languages and install instructions can be found in the [README](https://github.com/nordtheme/vim/blob/main/readme.md#installation) and in the [project wiki](https://github.com/nordtheme/vim/wiki).

❯ Implemented the main color theme file [`nord.vim`](https://github.com/nordtheme/vim/blob/main/colors/nord.vim). (@svengreb, #1, e2832b9)

<p align="center"><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-lang-javascript.png"/></p>

❯ Implemented the [lightline](https://github.com/itchyny/lightline.vim) color scheme file [`nord.vim`](https://github.com/nordtheme/vim/blob/main/autoload/lightline/colorscheme/nord.vim). (@svengreb, #2, f9891ffe)

<p align="center"><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-plugin-support-ui-lightline.png"/></p>

❯ Implemented the [airline](https://github.com/vim-airline/vim-airline) color theme file [`nord.vim`](https://github.com/nordtheme/vim/blob/main/autoload/airline/themes/nord.vim). (@svengreb, #3, e54464a7)

<p align="center"><img src="https://raw.githubusercontent.com/nordtheme/vim/main/assets/scrot-plugin-support-ui-airline.png"/></p>

# Project Initialization

![Release Date: 2016-12-25](https://img.shields.io/badge/Release_Date-2016--12--25-88C0D0.svg?style=flat-square)

<!--
+------------------+
+ Formatting Notes +
+------------------+

The `<summary />` tag must be separated with a blank line from the actual item content paragraph,
otherwise Markdown elements are not parsed and rendered!

+------------------+
+ Symbol Reference +
+------------------+
↠ (U+21A0): Start of a log section description
— (U+2014): Separator between a log section title and the metadata
⇄ (U+21C4): Separator between a issue ID and pull request ID in a log metadata
⊶ (U+22B6): Icon prefix for the short commit SHA checksum in a log metadata
⇅ (U+21C5): Icon prefix for the link of the Git commit history comparison on GitHub
-->

<!--lint disable final-definition-->

<!-- Base -->

[1]: https://www.nordtheme.com
[2]: https://github.com/nordtheme/vim/blob/main/autoload/lightline/colorscheme/nord.vim
[3]: https://github.com/nordtheme/nord

<!-- Shared -->

[4]: https://github.com/nordtheme/vim/blob/main/autoload/airline/themes/nord.vim
[5]: https://github.com/liuchengxu/vim-clap
[6]: https://github.com/neoclide/coc.nvim
[7]: https://neovim.io/doc/user/lsp.html
[8]: https://github.com/neovim/nvim-lspconfig
[9]: https://pandoc.org
[10]: https://github.com/w0rp/ale
[11]: https://github.com/nordtheme/vim#comment-contrast
[12]: https://github.com/nordtheme/vim#uniform-diff-background
[13]: https://github.com/vim-pandoc/vim-pandoc-syntax
[44]: https://github.com/meck

<!-- 0.6.0 -->

[14]: https://github.com/ctrlpvim/ctrlp.vim

<!-- 0.7.0 -->

[15]: https://github.com/nordtheme/nord/issues/55
[16]: https://gist.github.com/XVilka/8346728
[17]: https://github.com/itchyny/lightline.vim/pull/257
[18]: http://lesscss.org/functions/#color-operations-lighten
[19]: https://github.com/nordtheme/nord-atom-syntax/pull/47
[20]: https://github.com/junegunn/vim-plug
[21]: https://github.com/plasticboy/vim-markdown
[22]: https://github.com/tpope/vim-fugitive
[23]: https://github.com/nordtheme/vim#italic-support
[24]: https://github.com/nordtheme/vim#uniform-status-lines
[25]: http://vimdoc.sourceforge.net/htmldoc/syntax.html#hl-DiffAdd

<!-- 0.8.0 -->

[26]: https://github.com/itchyny/lightline.vim#advanced-configuration
[27]: https://github.com/mhinz/vim-signify

<!-- 0.9.0 -->

[28]: https://github.com/kshenoy/vim-signature
[29]: https://github.com/stephpy/vim-yaml
[30]: https://github.com/vimwiki/vimwiki
[31]: https://github.com/nordtheme/vim#line-number-background
[32]: https://github.com/nordtheme/vim#underline-support
[33]: http://yaml.org

<!-- 0.10.0 -->

[34]: https://github.com/nordtheme/vim/issues/11
[35]: https://github.com/itchyny/lightline.vim
[36]: https://github.com/nordtheme/nord/issues/94
[37]: https://github.com/edkolev/tmuxline.vim
[38]: https://github.com/cg433n

<!-- 0.11.0 -->

[39]: https://asciidoctor.org
[40]: https://cmake.org/cmake/help/latest/manual/cmake-generator-expressions.7.html
[41]: https://github.com/axelitus
[42]: https://github.com/huyvohcmc
[43]: https://github.com/markand
[45]: https://github.com/terminalwitchcraft
[46]: https://github.com/tidux
[47]: https://github.com/vabatta
[48]: https://github.com/neovimhaskell/haskell-vim
[49]: https://doc.rust-lang.org/reference/attributes.html
[50]: https://doc.rust-lang.org/edition-guide/rust-2018/macros/custom-derive.html
[51]: https://doc.rust-lang.org/1.1.0/book/enums.html
[52]: https://doc.rust-lang.org/reference/tokens.html#ascii-escapes
[53]: https://doc.rust-lang.org/1.8.0/book/macros.html
[54]: https://doc.rust-lang.org/book/ch10-02-traits.html
[55]: https://www.rust-lang.org
[56]: http://vimdoc.sourceforge.net/htmldoc/options.html#'fillchars'
[57]: http://vimdoc.sourceforge.net/htmldoc/syntax.html#hl-VertSplit

<!-- 0.12.0 -->

[58]: https://github.com/aborzunov
[59]: https://github.com/tobydeh
[60]: https://github.com/nordtheme/web/issues/143
[61]: https://www.nordtheme.com/ports/vim/configuration#bold-styles

<!-- 0.13.0 -->

[62]: https://github.com/nordtheme/vim/pull/58
[63]: https://github.com/nordtheme/vim/releases/tag/v0.7.0
[64]: https://github.com/alexandremjacques
[65]: https://github.com/hennessey
[66]: https://github.com/jmurinello
[67]: https://github.com/nixtrace
[68]: https://github.com/vasilescur
[69]: https://github.com/mhinz/vim-startify
[70]: https://github.com/vim/vim/compare/d9b0d83b13d2691e4544709abd87eac004715175...017ba07fa2cdc578245618717229444fd50c470d#diff-80fffb3e9c20e93e5b2328a9a20e19c
[71]: https://github.com/vim/vim/releases/tag/v8.1.2029
[72]: https://github.com/vim/vim/pull/4933
[73]: https://www.nordtheme.com/docs/ports/vim/configuration#uniform-status-lines

<!-- 0.14.0 -->

[74]: https://github.com/alexanderjeurissen
[75]: https://github.com/xulongwu4
[76]: https://github.com/neovim/nvim-lsp
[77]: https://github.com/Yggdroot/LeaderF

<!-- 0.15.0 -->

[78]: https://github.com/iamdidev
[79]: https://github.com/ikalnytskyi
[80]: https://github.com/HerringtonDarkholme/yats.vim
[81]: https://www.typescriptlang.org/docs/handbook/decorators.html
[82]: https://www.typescriptlang.org/docs/handbook/jsx.html
[83]: https://www.typescriptlang.org

<!-- 0.16.0 -->

[84]: https://github.com/nordtheme/vim/pull/218
[85]: https://github.com/nordtheme/vim/blob/main/colors/nord.vim
[86]: https://crispgm.com/page/neovim-is-overpowering.html
[87]: https://www.nordtheme.com/docs/colors-and-palettes
[88]: https://github.com/nordtheme/vim/compare/v0.15.0...v0.16.0
[89]: https://github.com/clason
[90]: https://github.com/crispgm
[91]: https://github.com/ojroques
[92]: https://www.latex-project.org
[93]: https://github.com/nathanaelkane/vim-indent-guides
[94]: https://github.com/nathanaelkane/vim-indent-guides#setting-custom-indent-colors
[95]: https://github.com/neovim/neovim/milestone/19
[96]: https://github.com/neovim/neovim#12655
[97]: https://www.overleaf.com/learn/latex/mathematical_expressions
[98]: https://github.com/StanAngeloff/php.vim
[99]: https://vimhelp.org/syntax.txt.html#ft%2dphp%2dsyntax
[100]: https://en.wikipedia.org/wiki/Greek_alphabet

<!-- 0.17.0 -->

[101]: https://github.com/nordtheme/vim/compare/v0.16.0...v0.17.0
[102]: https://github.com/neovim/neovim/releases/tag/v0.5.0
[103]: https://github.com/nvim-treesitter/nvim-treesitter/blob/90f15d9/plugin/nvim-treesitter.vim
[104]: https://github.com/nvim-treesitter/nvim-treesitter
[105]: https://github.com/tree-sitter/tree-sitter

<!-- 0.18.0 -->

[106]: https://github.com/nordtheme/vim/compare/v0.17.0...v0.18.0
[107]: https://neovim.io/doc/user/lsp.html#lsp-highlight-codelens
[108]: https://github.com/nvim-treesitter/nvim-treesitter/blob/fb5d6e04/doc/nvim-treesitter.txt#L493-L495
[109]: https://github.com/nvim-treesitter/nvim-treesitter/issues/1016#issuecomment-797049591
[110]: https://github.com/nvim-treesitter/nvim-treesitter/issues/78#issuecomment-647140700

<!-- 0.19.0 -->

[111]: https://github.com/nordtheme/vim/compare/v0.18.0...v0.19.0
[112]: https://github.com/neovim/neovim/releases/tag/v0.6.0
[113]: https://github.com/neovim/neovim/commit/a5bbb932f9094098bd656d3f6be3c58344576709#diff-51fab2b766d0a3b606462e95de492190df173b7296147912307cdad636cd492aR77
[114]: https://github.com/neovim/neovim/blob/f92a2457c2e7ad14d9a5a907ef4213fa770b6d95/runtime/doc/lsp.txt#L423
[115]: https://microsoft.github.io/language-server-protocol/specification#textDocument_documentHighlight
[116]: https://github.com/vim/vim/blob/0e6adf8a29d5c2c96c42cc7157f71bf22c2ad471/runtime/syntax/c.vim#L313-L375
[117]: https://github.com/neovim/neovim/blob/70db972e5fbcab39946ad8ac05472a693cf65b68/runtime/doc/lsp.txt#L456-L459
[118]: https://vimhelp.org/builtin.txt.html#builtin.txt#get%28%29
[119]: https://vimhelp.org/builtin.txt.html#builtin.txt#execute%28%29
