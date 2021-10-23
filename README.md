# .dotfiles

This is a collection of my dotfiles. Borrowed from the great @kyleshevlin. 
Peruse, you may find something useful.

## Usage

Clone this repository to your new machine and symlink the correct files, like so:

```bash
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/brew/Brewfile_fredsodata ~/Brewfile
ln -s ~/.dotfiles/brew/Brewfile_lumiere ~/Brewfile
# or replace with the Brewfile of your preference
```

Then be sure to source your new profile:

```bash
source ~/.zprofile
```

To set MacOS defaults:
```bash
sudo bash ~/.dotfiles/osx/defaults.sh
```
