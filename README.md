# Emacs config files

Here is my Emacs configuration files.

## Installation

    cd ~/src
    git clone git://github.com/peterhil/emacs-config.git
    ln -s ~/src/emacs-config/dot.emacs ~/.emacs
    ln -s ~/src/emacs-config/rc ~/.emacs.d/rc
    mkdir -p ~/.emacs.d/site-lisp
    mkdir ~/.emacs.d/tmp
    touch ~/.emacs.d/tmp/savehist

You may want to first comment out every include (using semicolons) in the Mode-specific configs,  
before you have installed the ones you'll use. Quite many of them can be found on Github.  
And the rest can be found on [Emacs Wiki](http://www.emacswiki.org/).
