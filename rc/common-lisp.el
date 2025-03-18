;; ==============================================================================
;;  Common Lisp
;; ------------------------------------------------------------------------------

(eval-when-compile (require 'cl-lib))

;; ==============================================================================
;; SLIME
;; ------------------------------------------------------------------------------

(use-package slime)

(add-to-list 'load-path (concat my-system-site-lisp "slime"))
;; (add-to-list 'load-path (concat user-emacs-directory "site-lisp/slime") ;; Already on path
;; (add-to-list 'load-path "~/quicklisp/dists/quicklisp/software/slime-v2.24/")
(require 'slime-autoloads)

(eval-after-load "slime"
  '(progn
     (slime-setup '(slime-asdf slime-tramp slime-fancy))
     (slime-require 'swank-listener-hooks)))

;; Set UTF-8 coding for swank/slime, see: https://answers.launchpad.net/sbcl/+question/74497
(setopt slime-net-coding-system 'utf-8-unix)
(setq language-environment "utf-8")

;; Slime Lisp Implementations
;; do m-- m-x slime ccl to start eg. Clozure Common Lisp from the list
(setq slime-lisp-implementations
      `((sbcl  (,(concat usr-prefix "/bin/sbcl")))
        (ccl   (,(concat usr-prefix "/bin/ccl")))
        (ccl64 (,(concat usr-prefix "/bin/ccl64")))
        (ecl   (,(concat usr-prefix "/bin/ecl")) :coding-system iso-latin-1-unix)))

(setopt inferior-lisp-program (concat usr-prefix "/bin/sbcl"))

(add-hook 'lisp-mode-hook
          (lambda ()
            (cond ((not (featurep 'slime))
                   (require 'slime)
                   (normal-mode)))))

; Local CLHS
;; (setq common-lisp-hyperspec-root
;;       (concat usr-prefix "/share/doc/lisp/HyperSpec-7-0/HyperSpec/"))
