<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-vim/develop/assets/nord-vim-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-vim/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-vim.svg"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-88C0D0.svg"/></a></p>

---

# 0.4.0
*2017-02-23*
## Features
### [Configurations][readme-configuration]
❯ Added a configuration to enable [italic comments](https://github.com/arcticicestudio/nord-vim#italic-comments).  
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

### Documentation
❯ Added the new terminal emulator port project [Nord Hyper](https://github.com/arcticicestudio/nord-hyper)  
[![Nord Hyper](https://cdn.rawgit.com/arcticicestudio/nord/develop/src/assets/nord-hyper-banner.svg)](https://github.com/arcticicestudio/nord-hyper)

# 0.3.0
*2017-01-24*
## Improvements
### Plugin Support
❯ The [Nord lightline.vim][nord-lightline] UI plugin theme now includes better support for the [tmuxline.vim](https://github.com/edkolev/tmuxline.vim) plugin. Before this implementation text shown in the main segment of the tmuxline, generated via the `:Tmuxline lightline` command, has been colorized using `nord0` which  resulted in unreadable text due to a `nord3` background.  
This has been fixed by using `nord5` as foreground color. (@scottwillmoore, #11, 4ea37f7e)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/9512557/21741900/4f792f5e-d537-11e6-9e69-09ff11b60c4e.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954034/15b87d1e-da47-11e6-9e70-a74aea14c378.png"/><br><strong>With unicode separators</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954058/7a7c5266-da47-11e6-8f1f-0203d5270c51.png"/><br><strong>Without specified configurations (tmuxline.vim autodetect)</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21954072/931669e2-da47-11e6-8db3-cbdf9d6681f1.png"/></p>

## Bug Fixes
### Documentation
❯ Fixed a typo in the [README installation guide](https://github.com/arcticicestudio/nord-vim#via-pluginruntimepath-manager) for Vundle. (@kepbod, #10, 29145bbb)

❯ Fixed the banner of the [Nord iTerm2](https://github.com/arcticicestudio/nord-iterm2) port project showing the [Nord GNOME Terminal](https://github.com/arcticicestudio/nord-gnome-terminal) banner instead. (@shvetsovdm, #8 / [nord/#9](https://github.com/arcticicestudio/nord/issues/9), 7a447b40)

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

[nord-lightline]: https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/lightline/colorscheme/nord.vim
[readme-configuration]: https://github.com/arcticicestudio/nord-vim#configuration
