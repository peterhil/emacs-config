;; Add the following to your init file to have packages installed by
;; Homebrew added to your load-path:

(let ((default-directory "/usr/local/share/emacs/site-lisp/"))
  (normal-top-level-add-subdirs-to-load-path))
