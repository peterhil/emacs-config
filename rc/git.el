;; ==============================================================================
;; Git support
;; -----------------------------------------------------------------------------

(cond ((eq system-type 'linux)
       (progn
         (add-to-list 'load-path (concat usr-prefix "/share/git-core/emacs/"))
         (add-to-list 'load-path (concat usr-prefix "/share/emacs/23.2/lisp/"))))
      ((eq system-type 'darwin)
       (progn
         (if (command-which-matches "git" ".nix-profile")
             (add-to-list 'load-path "~/.nix-profile/share/git/contrib/emacs/")
           (add-to-list 'load-path (concat usr-prefix "/share/git-core/contrib/emacs/")))
         (if (command-which-matches "emacs" ".nix-profile")
             (add-to-list 'load-path "~/.nix-profile/share/emacs/24.5/lisp/vc/")
           (add-to-list 'load-path (concat usr-prefix "/usr/local/share/emacs/23.3/lisp/")))
         )))

(require 'git)
; (require 'git-blame)
; (require 'vc-git)

(add-to-list 'vc-handled-backends 'GIT)

(setq magit-last-seen-setup-instructions "1.4.0")
(setq magit-diff-use-overlays nil)
