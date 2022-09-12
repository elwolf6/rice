# elwolf dotfiles

These are the dotfiles deployed by [LARBS](https://github.com/elwolf6/LARBS) 

- Very useful scripts are in `~/.local/bin/`
- Settings for:
	- vim/nvim (text editor)
	- zsh (shell)
	- lf (file manager)
	- mpd/ncmpcpp (music)
	- sxiv (image/gif viewer)
	- mpv (video player)
	- other stuff like xdg default programs, inputrc and more, etc.
- I try to minimize what's directly in `~` so:
	- All configs that can be in `~/.config/` are.
	- Some environmental variables have been set in `~/.zprofile` to move configs into `~/.config/`
- Bookmarks in text files used by various scripts (like `~/.local/bin/shortcuts`)
	- File bookmarks in `~/.config/shell/bm-files`
	- Directory bookmarks in `~/.config/shell/bm-dirs`

## Usage

These dotfiles are intended to go with numerous suckless programs I use:

- [dwm](https://github.com/elwolf6/dwm) (window manager)
- [slstatus](https://github.com/elwolf6/slstatus) (statusbar)
- [terminology](https://github.com/borisfaure/terminology) (terminal emulator)

## Install these dotfiles and all dependencies

Use [LARBS](https://github.com/elwolf6/LARBS) to autoinstall everything:
