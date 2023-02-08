;; ==============================================================================
;; Site lisp
;; ------------------------------------------------------------------------------

(setq my-system-site-lisp
      (concat usr-prefix "/share/emacs/site-lisp/"))


;; Add system site-lisp paths to your load path (for Homebrew or apt installed packages)
(let ((default-directory my-system-site-lisp))
  (normal-top-level-add-subdirs-to-load-path))


;; Location for external packages, include subdirs
;; When adding modes, put them under their own directory in site-lisp
(let ((default-directory (concat user-emacs-directory "site-lisp")))
  (normal-top-level-add-subdirs-to-load-path))
