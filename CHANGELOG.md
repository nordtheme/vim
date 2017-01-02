<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-vim/develop/assets/nord-vim-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-vim/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-vim.svg"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-blue.svg"/></a></p>

---

# 0.2.0
*2017-01-02*

## Improvements
❯ Characters under block cursors are now colored darker (`nord0`) while the block cursor is visible to achieve a optimal contrast and to avoid unreadability due to the same cursor- and foreground color (`nord4`). (@arcticicestudio / @scottwillmoore, #9, 30e1f7e3)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586772/f08a56d2-d0d4-11e6-84e0-37e3021317ad.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586785/23ef246c-d0d5-11e6-8573-2e0d8391186c.gif"/></p>

❯ The background color of visual mode selections is now colored in `nord1` instead of `nord3` to avoid a color collision with comments which has led to unreadable text.(@scottwillmoore, #7, bdb209f5)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588201/c8aa75ba-d0e4-11e6-9426-96bfab1c545f.gif"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588207/d67f29b0-d0e4-11e6-8eba-117f38a9c073.gif"/></p>

# 0.1.2
*2017-01-01*

## Bug Fixes
❯ Fixed a bug where the `g:colors_name` variable has been unset caused by the `syntax reset` call due to the execution
order. (@shuei72, #5, f8ffce24)

# 0.1.1
*2016-12-26*

## Bug Fixes
❯ Fixed wrong color variables (`*_term` to `*_gui`) for the `guisp` attribute of all `Spell*` highlighting groups which caused error logs while loading `vim`/`gvim`/MacVim. (@kamwitsta, #4, 4d642b9b)

# 0.1.0
*2016-12-25*

## Features
Detailed information about features, supported plugins/languages and install instructions can be found in the [README](https://github.com/arcticicestudio/nord-vim/blob/develop/README.md#installation) and in the [project wiki](https://github.com/arcticicestudio/nord-vim/wiki).

❯ Implemented the main color theme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/colors/nord.vim). (@arcticicestudio, #1, e2832b9)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-lang-javascript.png"/></p>

❯ Implemented the [lightline](https://github.com/itchyny/lightline.vim) color scheme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/lightline/colorscheme/nord.vim). (@arcticicestudio, #2, f9891ffe)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-plugin-support-ui-lightline.png"/></p>

❯ Implemented the [airline](https://github.com/vim-airline/vim-airline) color theme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/airline/themes/nord.vim). (@arcticicestudio, #3, e54464a7)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-plugin-support-ui-airline.png"/></p>

# 0.0.0
*2016-12-25*

**Project Initialization**
