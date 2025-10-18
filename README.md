# .dotfiles

## MacOS

### Prerequisite

- Install Brew

### Brew Packages Needed

- `brew install ripgrep`
- `brew install ghostty`
- `brew install fzf`
- `brew install neovim`
- `brew install tmux`
- `brew install stow`
- `brew install fd`
fd is to replace the default `find` command with a more user-friendly version.

### How to make symlinks

- Navigate to ~/.dotfiles
- Run `stow FOLDER_NAME` e.g `stow nvim`

NOTE: Each folder already has ".config" so no need to deal with nested configs like `./.config/nvim`
