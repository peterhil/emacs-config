;; ==============================================================================
;; nXhtml - package (includes php-mode and LOTS of other stuff)
;; ------------------------------------------------------------------------------

(load (concat user-emacs-directory "site-lisp/nxhtml/autostart"))

(use-package nxhtml-mode
  :load-path "site-lisp/nxhtml"
  :defer t
  :config
  (add-hook 'sgml-mode-hook
    (lambda ()
      ;; Default indentation, but let SGML mode guess, too.
      (make-local-variable 'sgml-basic-offset)
      (setq-default sgml-basic-offset 4)
      (sgml-guess-indent)))

  ;; FIXME Workaround for bug #663737:
  ;; https://bugs.launchpad.net/nxhtml/+bug/663737
  (unless (boundp 'image-types)
    (defvar image-types nil)))
