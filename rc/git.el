;; ==============================================================================
;; Git support
;; -----------------------------------------------------------------------------

(cond ((eq system-type 'linux)
       (progn
         (add-to-list 'load-path (concat usr-prefix "/share/git-core/emacs/"))
         (add-to-list 'load-path (concat usr-prefix "/share/emacs/23.2/lisp/"))))
      ((eq system-type 'darwin)
       (progn
         (add-to-list 'load-path (concat usr-prefix "/share/git-core/contrib/emacs/"))
         (add-to-list 'load-path (concat usr-prefix "/usr/local/share/emacs/23.3/lisp/")))))

(require 'git)
; (require 'git-blame)
; (require 'vc-git)

(setq magit-last-seen-setup-instructions "1.4.0")

(add-to-list 'vc-handled-backends 'GIT)
