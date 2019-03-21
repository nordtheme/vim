<p align="center"><img src="https://cdn.rawgit.com/arcticicestudio/nord-vim/develop/assets/nord-vim-banner.svg"/></p>

<p align="center"><img src="https://assets-cdn.github.com/favicon.ico" width=24 height=24/> <a href="https://github.com/arcticicestudio/nord-vim/releases/latest"><img src="https://img.shields.io/github/release/arcticicestudio/nord-vim.svg?style=flat-square"/></a> <a href="https://github.com/arcticicestudio/nord/releases/tag/v0.2.0"><img src="https://img.shields.io/badge/Nord-v0.2.0-88C0D0.svg?style=flat-square"/></a></p>

---

# 0.10.0

![Release Date: 2019-03-21](https://img.shields.io/badge/Release_Date-2019--03--21-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.10.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/15) [![Milestone](https://img.shields.io/badge/Milestone-0.10.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/12)

## Features

**Vim 8 terminal highlighting** — #125 ⇄ #126 (⊶ 83f8c260) by [@cg433n][gh-user-cg433n]
↠ Added support for the Vim's built-in terminal (`:terminal`) that comes with version 8.0.0 and higher.

## Improvements

**Comment Color Brightness** — #145 ⇄ #146 (⊶ 9e0249ca)
↠ Implemented the increase of the comment color (`nord3`) brightness by 10% from a lightness level of ~35% to ~45%.

➜ **Please see [arcticicestudio/nord#94][gh-nord#94] for all details about this design change decision**!

⚠ **NOTE**: This change also **deprecates the [comment contrast][readme-config-comment-brightness] configuration** that will be removed in Nord Vim version 1.0.0!
The default comment color has been adjusted so the configuration is not required anymore for users to increase the brightness on their own.
To notify users about this change a deprecation warning will be shown when the `g:nord_comment_brightness` configuration variable has been set and initialized through the user's configuration.

## Improvements

**Improved compatibility of airline with tmuxline.vim plugin** — #117 ⇄ #128 (⊶ 3150628f)
↠ The [Nord airline.vim][gh-src-airline] UI plugin theme now includes better support for the [tmuxline.vim][gh-tmuxline.vim] plugin. Previously text shown in the main segment of the _tmuxline_, generated via the `:Tmuxline airline` command, caused a `bad colour: NONE` error or has been colorized using `nord0` which resulted in unreadable text due to a `nord3` background.

This has been fixed by using `nord5` as foreground color. …[#11][gh-11] was used as implementation reference since it fixed the same incompatibility for the [lightline.vim][gh-lightline.vim] plugin.

![](https://user-images.githubusercontent.com/7836623/41835439-e3f2388c-7857-11e8-91e0-a0440b7ecf35.png)

# 0.9.0

![Release Date: 2018-06-24](https://img.shields.io/badge/Release_Date-2018--06--24-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.9.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/13) [![Milestone](https://img.shields.io/badge/Milestone-0.9.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/11)

## Features

### Syntax

#### Plugin Support

❯ Added support for the [YAML][] plugin [stephpy/vim-yaml][plugin-stephpy/vim-yaml] which improves the highlighting for keys to match the JSON syntax style. (PR #120, @mdzhang, b1478b07)

<p align="center"><p><strong>Before</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816223-b5b7df7c-777f-11e8-85ba-ac945b68e751.png" /></p>

<p align="center"><p><strong>After</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816222-b5a091c8-777f-11e8-9db9-38b96e8a3eb1.png" /></p>

❯ Added basic syntax highlighting support for [vimwiki][plugin-vimwiki/vimwiki]. (PR #98 in PR #114, @smesko85, 9e7addbc)

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/41807872-85a56eee-76d5-11e8-9dd3-8319f7dae829.png" /></p>

### UI

❯ Added a new [configuration to allow users to enable background for the line number of the current line][readme-config-line-number-background]. It can be enabled by setting the `g:nord_cursor_line_number_background` variable to `1`. (PR #100, @andrepolischuk, 035e36de)

```vim
let g:nord_cursor_line_number_background = 1
```

<p align="center"><strong>No background (default)</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-config-cursor-line-number-background-default.png" /></p>

<p align="center"><strong>Enabled background</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-config-cursor-line-number-background.png" /></p>

❯ Added a new [configuration to allow users to globally toggle underlines][readme-config-underline-support] for cases where the terminal emulator might not be capable to handle underlines in terminal mode. It can be enabled by setting the `g:nord_underline` variable to `1`. (#106 in PR #127 (supersedes #109), @dylnmc @markand , 01cfd1be)

<p align="center"><strong>Underlined Text</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-config-underline.png"/></p>

❯ Added support for the status line of the `:terminal` window mode for Vim or Neovim. (PR #108 (supersedes #103), @dylnmc, 922504fb)

<p align="center"><strong>Before</strong><img src="https://user-images.githubusercontent.com/7836623/41812738-86c84262-7728-11e8-8bf4-476eb99e892e.png" /></p>

<p align="center"><strong>After</strong><img src="https://user-images.githubusercontent.com/7836623/41812737-86b2def4-7728-11e8-9d8a-9976038dda92.png" /></p>

#### Plugin Support

❯ Added highlighting support for the navigation marks in the sign column of the [kshenoy/vim-signature][plugin-kshenoy/vim-signature] plugin. (PR #122, @kooparse, 1df39453)

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/41816354-1133d24a-7783-11e8-8242-0e7d4c3b555c.png" /></p>

## Improvements

### Syntax

❯ Added highlighting for the JavaScript keyword `this`. (PR #119, @kristijanhusak, 4fe2d43e)

<p align="center"><p><strong>Before</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816139-3c6f145c-777d-11e8-8f5b-58f122dc5050.png" /></p>

<p align="center"><p><strong>After</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816138-3c578198-777d-11e8-83f0-62f7aad0ce13.png" /></p>

### UI

❯ The cursor is now correctly shown and visible when leaving a terminal window from within Vim or Neovim by adding the `TermCursorNC` group. (PR #101, @meck, 2fac9fa0)

❯ The „inline marker“ in unified _diffs_ is now colorized differently than the background of the changed line to make the changes better and faster recognizable. This applies for both the [uniform _diff_ background mode][readme-config-uniform-diff-background] and normal _diff_ mode. (PR #121, @ironhouzi, 65c559ee)

<p align="center"><p><strong>Before/After comparison of default <em>diff</em> mode</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816510-4d548a90-7787-11e8-9fbd-9ae572763c22.png" /><br><img src="https://user-images.githubusercontent.com/7836623/39664393-e75f52b8-5082-11e8-8bb0-ba19c11dd391.png" /></p>

<p align="center"><p><strong>Before/After comparison of uniform <em>diff</em> mode</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816511-4d6aeb82-7787-11e8-90b4-f7c67ad9d952.png" /><br><img src="https://user-images.githubusercontent.com/7836623/39699476-acb7e1ca-51f9-11e8-9eca-8efc44b184f7.png" /></p>

## Bug Fixes

### UI

❯ The current line number's color is now highlighted correctly in terminal mode. Previously it was only highlighted when running in GUI mode or when `termguicolors` has been set. (#116 in 50ec737b (PR #100), @huyvohcmc @dylnmc)

<p align="center"><p><strong>Before</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816653-d62d808a-778a-11e8-8bce-d1f76a1e6fae.png" /></p>

<p align="center"><p><strong>After</strong></p><img src="https://user-images.githubusercontent.com/7836623/41816652-d61787bc-778a-11e8-9371-c0bfd852f491.png" /></p>

# 0.8.0

![Release Date: 2018-01-05](https://img.shields.io/badge/Release_Date-2018--01--05-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.8.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/11) [![Milestone](https://img.shields.io/badge/Milestone-0.8.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/10)

## Features

### Plugin Support

#### UI

❯ Added support for [vim-signify][plugin-mhinz/vim-signify]. (PR #81, @dabio, edcdd0e4)

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/34623682-a7b7e960-f252-11e7-9194-c82aff310a75.png"/></p>

## Improvements

### UI

❯ The color of links in `:help` was the same as normal text making it impossible to to distinguish between both. This has been improved by using `nord8` including the help bars when enabled with `:set conceallevel=2`. (#85 in PR #93, @delphinus, e9974fe6)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34460697-25f5be7e-ee16-11e7-9c57-32bb2ec15314.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/34460700-35bddeea-ee16-11e7-976b-e00cfe80c462.png"/></p>

### Documentation

❯ The lightline screenshots in the documentation have been made using the [lightline's advanced configurations][itchyny/lightline-adv-config]. This confused users when the lighline does not equal the one seen on the screenshot due to the default lightline configuration. This has now been clarified including a additional screenshot showing the appearance of the lightline when using the default configuration. (#74 in PR #94, @lokesh-krishna, 3c14c961)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-plugin-support-ui-lightline-default.png"/></p>

## Bug Fixes

❯ The background color for matching parens is now assigned to the right color `nord3` instead of `nord0` in GUI mode. (#95 in PR #96, @dylnmc, 8bc1be01)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34619232-cd9ea512-f241-11e7-8045-e4ac695d56bb.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/34619246-dc2bee0a-f241-11e7-9ce6-c3d51ed6ec75.png"/></p>

# 0.7.0

![Release Date: 2017-12-30](https://img.shields.io/badge/Release_Date-2017--12--30-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.7.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/10) [![Milestone](https://img.shields.io/badge/Milestone-0.7.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/9)

## Features

❯ Added a new [configuration to allow users to increase the comment brightness][readme-config-comment-brightness] by 1 - 20 percent. It can be enabled by setting the `g:nord_comment_brightness variable` to a number between `1` and `20`. (#48 in PR #56, @drzel, e18ab4e8)

**This option should only be enabled if the terminal supports 24bit true color (16 million colors) and requires the `termguicolors` option to be set is in `~/.vimrc` or via `:set termguicolors`!**

<p align="center"><strong>Default and 15% increased</strong><br><img src="https://user-images.githubusercontent.com/7836623/30772939-a65c92b6-a066-11e7-92f2-2f7089fe7700.png"/><br><img src="https://user-images.githubusercontent.com/7836623/30772941-b85577d0-a066-11e7-9c64-b9dab6736034.png"/></p>

<p align="center"><strong>Default and 12% increased</strong><br><img src="https://user-images.githubusercontent.com/7836623/30772949-ea459978-a066-11e7-8092-9e6522f9b7bf.png"/><br><img src="https://user-images.githubusercontent.com/7836623/30772950-eb8c2c84-a066-11e7-92d2-a64ac5f20521.png"/></p>

To adhere to the Nord design guidelines this option uses `nord3` by default.

This is a reference table if users like to use the same increased contrast values as provided by the [Nord Atom Syntax accessibility custom comment contrast theme setting][nord-atom-syntax-pr-47] which are calculated using the LESSCSS [`lighten`][lesscss-doc-fn-lighten] function.

| Increased by | Calculated value |
| --- | --- |
| 1% | `#4e586d` |
| 2% | `#505b70` |
| 3% | `#525d73` |
| 4% | `#556076` |
| 5% | `#576279` |
| 6% | `#59647c` |
| 7% | `#5b677f` |
| 8% | `#5d6982` |
| 9% | `#5f6c85` |
| 10% | `#616e88` |
| 11% | `#63718b` |
| 12% | `#66738e` |
| 13% | `#687591` |
| 14% | `#6a7894` |
| 15% | `#6d7a96` |
| 16% | `#6f7d98` |
| 17% | `#72809a` |
| 18% | `#75829c` |
| 19% | `#78859e` |
| 20% | `#7b88a1` |

More information about true color and the support in various terminals can be found in [this gist][gist-colors-in-terminals].

❯ Added a new [configuration for a uniform *diff* background color][readme-config-uniform-diff-background]. (#60 in PR #61 #62 #65, @dylnmc @aidanharris @berkin, 958322d0)

![](https://user-images.githubusercontent.com/7836623/30969227-0dbcb982-a462-11e7-86a8-a69e91ff7bc0.png)

Setting `g:nord_uniform_diff_background` to `1` enables the uniform diff background using `nord1`:

![](https://user-images.githubusercontent.com/7836623/30969233-12a37d64-a462-11e7-8253-3c083eba5174.png)

❯ Added a new [configuration to use uniform activate- and inactive status line backgrounds][readme-config-uniform-statusline-background]. (#37 in PR #58, @dylnmc @DenniJensen, 93056802)

<p align="center"><strong>Default status lines</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-config-uniform-status-lines-default.png"/></p>

<p align="center"><strong>Uniform status lines</strong><br><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-config-uniform-status-lines.png"/></p>

❯ Added a new [configuration to explicitly enable italic text formatting][readme-config-italic]. (#88 in PR #89, @lokesh-krishna @dylnmc, dbfc55ff)

**Please note that this option should only be enabled if the used terminal supports italics!**

<p align="center"><strong>With enabled option for italic comments</strong><br><img src="https://user-images.githubusercontent.com/7836623/34433722-6c7f0a4e-ec81-11e7-8af9-ebc227b6535e.png"/></p>

<p align="center"><strong>Markdown syntax styling</strong><br><img src="https://user-images.githubusercontent.com/7836623/34455900-697cbb6c-ed89-11e7-8c2b-29ec7dbcd703.png"/></p>

❯ Added support for NeoVim UI terminal colors. (#63, @meck, af01167b)

### Plugin Support

#### Syntax

❯ Added support for the [plasticboy/vim-markdown][plugin-plasticboy/vim-markdown] syntax plugin to match the style of the built-in markdown syntax styles. (#45 in PR #57, @VVVFO, 09921268)

![](https://user-images.githubusercontent.com/7836623/30773618-63ffde56-a074-11e7-9452-121283afcb44.png)

![](https://user-images.githubusercontent.com/7836623/30773619-657ec968-a074-11e7-80ba-c1cf3a3c19b0.png)

#### UI

❯ Added support for the `PlugClean` command of the [junegunn/vim-plug][plugin-junegunn/vim-plug] plugin which used the `Ignore` group by default for deleted directory listings resulting in unreadable text when `cursorline` has been set. (#43 in PR #59, @dylnmc, e532b5d6)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/30959403-53d9cd0a-a440-11e7-8c38-3045e280131a.gif"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/30959419-618876ea-a440-11e7-8895-6e9acfd8b830.gif"/></p>

❯ Added basic support for [tpope/vim-fugitive][plugin-tpope/vim-fugitive]. (#76 in PR #77, @anhari, fa09c3b1)

Filenames are now highlighted when using the `:Gstatus` command.

![](https://user-images.githubusercontent.com/6628875/33404056-def50276-d530-11e7-8e76-5733f58f7139.gif)

## Improvements

### Syntax

❯ Added highlight support for legacy *diff* groups `diffAdded` and `diffRemoved` of the `git.vim` and `diff.vim` syntx definitions. (#66 in PR #67, @brandoniffert, 99e59e67)

These groups are not in the [official vim documentation][vim-doc-diffAdd] but are still used by the syntax for example when run with `git commit --verbose`.

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/32219558-d906cf5c-be2e-11e7-98e7-d22583bac4f0.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/32219588-f00e0c4c-be2e-11e7-91e7-87bb28c48721.png"/></p>

❯ Added highlighting support for Markdown *italic* and **bold** delimiter. (#90 in PR #92, 97c8aa24)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34452697-fd3d6502-ed45-11e7-9ba1-8e19e032c009.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/34452755-ee8046a0-ed46-11e7-8f3d-b9567995a9b4.png"/></p>

❯ Added missing Markdown *italic* and **bold** groups. (#84 in PR #91, @lokesh-krishna @dylnmc, 63b46125)

❯ Improved the highlighting for matching parens. (#75 and #71 in PR #78, @vincentzhezhang @cryptomaniac512 @dylnmc, 8eb7b2a6)

The background color intensity under the cursor was too bright and the cursor no more visible causing the user to be distracted to focus on the matching bracket instead of the bracket at the cursor position.

To optimally improve the highlighting `nord3` will now be used as background color for the matching element which doesn't conflict with the `cursorline` color and also stands out in order to see the matching element.

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/34409455-3370fada-ebca-11e7-9ed8-d83c3a9c5055.png"/></p>

<p align="center"><strong>After with <code>cursorline</code> option</strong><br><img src="https://user-images.githubusercontent.com/7836623/34409567-d8c64bfc-ebca-11e7-919a-1a40cf146084.png"/></p>

<p align="center"><strong>After without <code>cursorline</code> option</strong><br><img src="https://user-images.githubusercontent.com/7836623/34409570-dec9c1aa-ebca-11e7-8e68-32b79ec0d7c9.png"/></p>

<p align="center"><img src="https://user-images.githubusercontent.com/7836623/34409581-eddcefc8-ebca-11e7-9ab7-29b80704d836.gif"/></p>

## Bug Fixes

❯ *TODO* keywords are now highlighted correctly for Neovim and gVim (#52 in PR #53, @dylnmc, 063620f0)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/30737840-4c8014e0-9f88-11e7-9a26-7dea066e3316.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/30737858-5a7be150-9f88-11e7-9053-2aa75787a76d.png"/></p>

❯ Fixed invisible inactive lightline bars (PR #73, @dylnmc, 788876b8)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7635158/32986925-d6a79234-ccaa-11e7-9561-43daffa1722c.png"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7635158/32986927-e41880f4-ccaa-11e7-9444-316958ec74c1.png"/></p>

❯ Fixed the `WildMenu` background color for current selection (tab completion) not being visible. (#64 in PR #80, @markand, 53fce0db)

<p align="center"><strong>Before</strong><br><img src="https://user-images.githubusercontent.com/7836623/33609457-76d72fce-d9c8-11e7-9048-d2c6c7ed7800.gif"/></p>

<p align="center"><strong>After</strong><br><img src="https://user-images.githubusercontent.com/7836623/33609464-806ee55e-d9c8-11e7-8020-58030141fac3.gif"/></p>

## Tasks

❯ Added the included [lightline theme to the official lightline repository][itchyny/lightline.vim-gh-257]. (#68 in [itchyny/lightline#257][itchyny/lightline.vim-gh-257], @lokesh-krishna, itchyny/lightline@e69081c1370a57647e05df21b60a4ef092c3ce91)

### Documentation

❯ Migrated to the MIT license to adapt to the migration of the main [Nord][nord-gh] project. Detailed information can be found in the [main task ticket][gh-55-arcticicestudio/nord]. (#69 in PR #70, fa55dc35)

# 0.6.0

![Release Date: 2017-08-03](https://img.shields.io/badge/Release_Date-2017--08--03-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.6.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/9) [![Milestone](https://img.shields.io/badge/Milestone-0.6.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/8)

## Features

### Plugin Support

#### UI

❯ Added basic support for [CtrlP][plugin-ctrlp]. (PR #33, @syedelec)

* Matched characters are using the keyword color instead of the normal text color to make matched characters visible
* Already opened buffers now take the normal text color instead of the comment color

❯ Added basic support [ALE][plugin-ale]. (PR #44, @meck)

* Warning signs are colorized using a `nord13` foreground
* Error signs are colorized using a `nord11` foreground instead of a red background with a white foreground

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

![Release Date: 2017-04-17](https://img.shields.io/badge/Release_Date-2017--04--17-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.5.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/8) [![Milestone](https://img.shields.io/badge/Milestone-0.5.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/7)

## Improvements

### Language Support

❯ Implemented optimized styles for Ruby (@hahuang65, #29, 085c1337)
  - Symbols (`rubySymbol`) now have a bold font style
  - Block parameter list symbols (`rubyBlockParameterList`) are now colorized as keywords
  - Local (variable) methods (`rubyLocalVariableOrMethod`) are now colorized as methods

<p align="center"><img src="https://cloud.githubusercontent.com/assets/7836623/25083146/af02dd0a-2355-11e7-8adc-f53b0803a484.png"/></p>

## Bug Fixes

### Documentation

❯ Fixed a typo in the project description. (@arcticicestudio, #28, b2134029)

# 0.4.0

![Release Date: 2017-02-23](https://img.shields.io/badge/Release_Date-2017--02--23-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.4.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/7) [![Milestone](https://img.shields.io/badge/Milestone-0.4.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/6)

## Features

### Configurations

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

![Release Date: 2017-01-24](https://img.shields.io/badge/Release_Date-2017--01--24-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.3.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/6) [![Milestone](https://img.shields.io/badge/Milestone-0.3.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/5)

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

![Release Date: 2017-01-02](https://img.shields.io/badge/Release_Date-2017--01--02-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.2.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/5) [![Milestone](https://img.shields.io/badge/Milestone-0.2.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/4)

## Improvements

❯ Characters under block cursors are now colored darker (`nord0`) while the block cursor is visible to achieve a optimal contrast and to avoid unreadability due to the same cursor- and foreground color (`nord4`). (@arcticicestudio / @scottwillmoore, #9, 30e1f7e3)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586772/f08a56d2-d0d4-11e6-84e0-37e3021317ad.png"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21586785/23ef246c-d0d5-11e6-8573-2e0d8391186c.gif"/></p>

❯ The background color of visual mode selections is now colored in `nord1` instead of `nord3` to avoid a color collision with comments which has led to unreadable text.(@scottwillmoore, #7, bdb209f5)

<p align="center"><strong>Before</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588201/c8aa75ba-d0e4-11e6-9426-96bfab1c545f.gif"/><br><strong>After</strong><br><img src="https://cloud.githubusercontent.com/assets/7836623/21588207/d67f29b0-d0e4-11e6-8eba-117f38a9c073.gif"/></p>

# 0.1.2
*2017-01-01*

![Release Date: 2017-01-01](https://img.shields.io/badge/Release_Date-2017--01--01-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.1.2-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/4) [![Milestone](https://img.shields.io/badge/Milestone-0.1.2-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/3)

## Bug Fixes

❯ Fixed a bug where the `g:colors_name` variable has been unset caused by the `syntax reset` call due to the execution
order. (@shuei72, #5, f8ffce24)

# 0.1.1

![Release Date: 2016-12-26](https://img.shields.io/badge/Release_Date-2016--12--26-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.1.1-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/3) [![Milestone](https://img.shields.io/badge/Milestone-0.1.1-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/2)

## Bug Fixes

❯ Fixed wrong color variables (`*_term` to `*_gui`) for the `guisp` attribute of all `Spell*` highlighting groups which caused error logs while loading `vim`/`gvim`/MacVim. (@kamwitsta, #4, 4d642b9b)

# 0.1.0

![Release Date: 2016-12-25](https://img.shields.io/badge/Release_Date-2016--12--25-88C0D0.svg?style=flat-square) [![Project Board](https://img.shields.io/badge/Project_Board-0.1.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/projects/2) [![Milestone](https://img.shields.io/badge/Milestone-0.1.0-88C0D0.svg?style=flat-square)](https://github.com/arcticicestudio/nord-vim/milestone/1)

## Features

Detailed information about features, supported plugins/languages and install instructions can be found in the [README](https://github.com/arcticicestudio/nord-vim/blob/develop/README.md#installation) and in the [project wiki](https://github.com/arcticicestudio/nord-vim/wiki).

❯ Implemented the main color theme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/colors/nord.vim). (@arcticicestudio, #1, e2832b9)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-lang-javascript.png"/></p>

❯ Implemented the [lightline](https://github.com/itchyny/lightline.vim) color scheme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/lightline/colorscheme/nord.vim). (@arcticicestudio, #2, f9891ffe)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-plugin-support-ui-lightline.png"/></p>

❯ Implemented the [airline](https://github.com/vim-airline/vim-airline) color theme file [`nord.vim`](https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/airline/themes/nord.vim). (@arcticicestudio, #3, e54464a7)

<p align="center"><img src="https://raw.githubusercontent.com/arcticicestudio/nord-vim/develop/assets/scrot-plugin-support-ui-airline.png"/></p>

# Project Initialization

![Release Date: 2016-12-25](https://img.shields.io/badge/Release_Date-2016--12--25-88C0D0.svg?style=flat-square)

[gh-11]: https://github.com/arcticicestudio/nord-vim/issues/11
[gh-55-arcticicestudio/nord]: https://github.com/arcticicestudio/nord/issues/55
[gh-lightline.vim]: https://github.com/itchyny/lightline.vim
[gh-nord#94]: https://github.com/arcticicestudio/nord/issues/94
[gh-src-airline]: https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/airline/themes/nord.vim
[gh-tmuxline.vim]: https://github.com/edkolev/tmuxline.vim
[gh-user-cg433n]: https://github.com/cg433n
[gist-colors-in-terminals]: https://gist.github.com/XVilka/8346728
[itchyny/lightline.vim-gh-257]: https://github.com/itchyny/lightline.vim/pull/257
[itchyny/lightline-adv-config]: https://github.com/itchyny/lightline.vim#advanced-configuration
[lesscss-doc-fn-lighten]: http://lesscss.org/functions/#color-operations-lighten
[nord-gh]: https://github.com/arcticicestudio/nord
[nord-atom-syntax-pr-47]: https://github.com/arcticicestudio/nord-atom-syntax/pull/47
[nord-lightline]: https://github.com/arcticicestudio/nord-vim/blob/develop/autoload/lightline/colorscheme/nord.vim
[plugin-ale]: https://github.com/w0rp/ale
[plugin-ctrlp]: https://github.com/ctrlpvim/ctrlp.vim
[plugin-junegunn/vim-plug]: https://github.com/junegunn/vim-plug
[plugin-kshenoy/vim-signature]: https://github.com/kshenoy/vim-signature
[plugin-mhinz/vim-signify]: https://github.com/mhinz/vim-signify
[plugin-plasticboy/vim-markdown]: https://github.com/plasticboy/vim-markdown
[plugin-stephpy/vim-yaml]: https://github.com/stephpy/vim-yaml
[plugin-tpope/vim-fugitive]: https://github.com/tpope/vim-fugitive
[plugin-vimwiki/vimwiki]: https://github.com/vimwiki/vimwiki
[readme-config]: https://github.com/arcticicestudio/nord-vim#configuration
[readme-config-comment-brightness]: https://github.com/arcticicestudio/nord-vim#comment-contrast
[readme-config-italic]: https://github.com/arcticicestudio/nord-vim#italic-support
[readme-config-line-number-background]: https://github.com/arcticicestudio/nord-vim#line-number-background
[readme-config-underline-support]: https://github.com/arcticicestudio/nord-vim#underline-support
[readme-config-uniform-diff-background]: https://github.com/arcticicestudio/nord-vim#uniform-diff-background
[readme-config-uniform-statusline-background]: https://github.com/arcticicestudio/nord-vim#uniform-status-lines
[vim-doc-diffAdd]: http://vimdoc.sourceforge.net/htmldoc/syntax.html#hl-DiffAdd
[yaml]: http://yaml.org
