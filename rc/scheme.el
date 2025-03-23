;; ==============================================================================
;;  Scheme
;; ------------------------------------------------------------------------------

(use-package scheme
  :mode "\\.scm\\'"
  :config
  (use-package scheme-complete)

  ;; (setq scheme-program-name "gsc -:d-") ; Gambit
  ;; (setq scheme-program-name "csi -:d-") ; Chicken
  ;; (setq scheme-program-name "gosh -i") ; Gauche
  (setq scheme-program-name "larceny") ; Larceny

  ;; Quack enhances Emacs support for Scheme programming
  (use-package quack))


;;==============================================================================
;;  Gambit Scheme
;; ------------------------------------------------------------------------------

(when (and (file-exists-p "/Library/Gambit-C/current/share/emacs/site-lisp")
           (eq system-type "darwin"))
  (use-package gambit
    :load-path "/Library/Gambit-C/current/share/emacs/site-lisp"
    :hook
    (inferior-scheme-mode . gambit-inferior-mode)
    (scheme-mode-hook . gambit-mode)
    :config
    (autoload 'gambit-inferior-mode "gambit" "Hook Gambit mode into cmuscheme.")
    (autoload 'gambit-mode "gambit" "Hook Gambit mode into scheme.")))


;; ==============================================================================
;;  Chicken Scheme
;; ------------------------------------------------------------------------------

;; (use-package hen
;;   :load-path "site-lisp/hen")

;; Requires chicken scheme (csi) to be installed
;; (use-package geiser)
