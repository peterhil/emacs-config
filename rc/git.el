;; ==============================================================================
;; Git support
;; -----------------------------------------------------------------------------

(cond ((eq system-type 'linux)
       (progn
         (add-to-list 'load-path (concat usr-prefix "/share/git-core/emacs/"))
         (add-to-list 'load-path (concat usr-prefix "/share/emacs/24.3/lisp/"))))
      ((eq system-type 'darwin)
       (progn
         (add-to-list 'load-path (concat usr-prefix "/share/git-core/contrib/emacs/"))
	 (add-to-list 'load-path (concat usr-prefix "/share/emacs/24.3/lisp/")))))

(require 'git)
(require 'git-blame)
(require 'vc-git)


(add-to-list 'vc-handled-backends 'GIT)
