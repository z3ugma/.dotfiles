# .dotfiles

This is a collection of my dotfiles. Borrowed from the great @kyleshevlin.
Peruse, you may find something useful.

## Usage

Clone this repository to your new machine and symlink the correct files, like so:

```bash

chmod 700 ~/.ssh
chmod 600 ~/.ssh/id_rsa
chmod 644 `/.ssh/id-rsa.pub

cd ~
git clone git@github.com:z3ugma/.dotfiles.git
```

```bash
ln -s ~/.dotfiles/.zprofile ~/.zprofile
ln -s ~/.dotfiles/.zshrc ~/.zshrc
ln -s ~/.dotfiles/brew/Brewfile_fredsodata ~/Brewfile
#ln -s ~/.dotfiles/brew/Brewfile_lumiere ~/Brewfile
cd .dotfiles
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
