# Emacs config files

Here are my Emacs configuration files.

## Installation

Move aside your existing .emacs file (or just remove it):

    mv ~/.emacs ~/.emacs-old

Clone the source:

    cd ~/src  # Replace with wherever you want to clone
    git clone git://github.com/peterhil/emacs-config.git

Make symlinks:

    ln -sf $PWD/dot.emacs ~/.emacs
    ln -sf $PWD/rc ~/.emacs.d/rc

## Usage

This configuration uses [use-package][] in order to lazily initialize, load and configure packages. I am just starting to lazy load packages with [use-package][], so check:

- configuration includes in `rc/init.el`
- package includes in `rc/packages.el`

And comment out the ones you do not need.

### Packages

Under the `rc` directory you can find configurations for various packages. See `*Messages*` buffer after startup to see which ones you may be missing.

### Manually installing Emacs code

Subdirectories under `~/.emacs.d/site-lisp` are automatically added to the `load-path`.

Add the script `update-git-repos.sh` in your path and use it from `~/.emacs.d/site-lisp` directory to automatically update any Git repositories there.

[use-package]: https://github.com/jwiegley/use-package
