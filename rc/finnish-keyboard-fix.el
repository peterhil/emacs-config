;; =============================================================================
;; Finnish keyboard relief for OSX Emacs
;; -----------------------------------------------------------------------------
;;
;; https://github.com/auramo/emacs-osx-finnish-keyboard-fix

(progn
  (defun aq-binding (any) nil)

  (load  "~/.emacs.d/site-lisp/emacs-osx-finnish-keyboard-fix/aquamacs-tools.el")
  (load  "~/.emacs.d/site-lisp/emacs-osx-finnish-keyboard-fix/emulate-mac-keyboard-mode.el")

  (setq emulate-mac-finnish-keyboard-mode t)
  ;; (setq mac-right-option-modifier nil)
  )
