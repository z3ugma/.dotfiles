# .dotfiles

This is a collection of my dotfiles. Borrowed from the great @kyleshevlin. 
Peruse, you may find something useful.

## Usage

Clone this repository to your new machine and symlink the correct files, like so:

```bash
ln -s ~/.dotfiles/.bash_profile ~/.bash_profile
ln -s ~/.dotfiles/.bashrc ~/.bashrc
```

Then be sure to source your new profile:

```bash
source ~/.bash_profile
```

To set MacOS defaults:
```bash
sudo bash ~/.dotfiles/osx/defaults.sh
```
