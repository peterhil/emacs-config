;; ==============================================================================
;;  Common Lisp
;; ------------------------------------------------------------------------------

(eval-when-compile
  (require 'cl-lib))

;; ==============================================================================
;; SLIME
;; ------------------------------------------------------------------------------

(setopt inferior-lisp-program (concat usr-prefix "/bin/sbcl"))

;; List of lternative implementations
;; Press 'M-- M-x slime RET ccl' to start Clozure Common Lisp for example.
(setq slime-lisp-implementations
      `((sbcl  (,(concat usr-prefix "/bin/sbcl")))
        (ccl   (,(concat usr-prefix "/bin/ccl")))
        (ccl64 (,(concat usr-prefix "/bin/ccl64")))
        (ecl   (,(concat usr-prefix "/bin/ecl")) :coding-system iso-latin-1-unix)))


(setq site-lisp-slime-dir
      (concat my-system-site-lisp "slime"))

(defun require-slime ()
  (when (featurep 'slime)
    (require 'slime)
    (normal-mode)))

(use-package slime
  :hook (lisp-mode . require-slime)
  :load-path
  site-lisp-slime-dir
  ;; (concat user-emacs-directory "site-lisp/slime") ;; Already on path
  ;; "~/quicklisp/dists/quicklisp/software/slime-v2.24/"
  :config
  ;; Set UTF-8 coding for swank/slime, see: https://answers.launchpad.net/sbcl/+question/74497
  (setopt slime-net-coding-system 'utf-8-unix)
  (setq language-environment "utf-8")

  ;; Local CLHS
  ;; (setq common-lisp-hyperspec-root
  ;;       (concat usr-prefix "/share/doc/lisp/HyperSpec-7-0/HyperSpec/"))

  (slime-setup '(slime-asdf slime-tramp slime-fancy))
  (slime-require 'swank-listener-hooks)

  (require 'slime-autoloads))
