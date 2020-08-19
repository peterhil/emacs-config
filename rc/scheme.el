;; ==============================================================================
;;  Scheme
;; ------------------------------------------------------------------------------

(require 'scheme)
(load "scheme-complete.el")
(require 'scheme-complete)

;; Quack mode
                                        ;(require 'quack)
(autoload 'quack "quack.el"
  "Minor mode for editing long lines." t)

;; (setq scheme-program-name "gsc -:d-") ; Gambit
;; (setq scheme-program-name "csi -:d-") ; Chicken
;; (setq scheme-program-name "gosh -i") ; Gauche
(setq scheme-program-name "larceny") ; Larceny

;;==============================================================================
;;  Gambit Scheme
;; ------------------------------------------------------------------------------

(when (eq system-type "darwin")
  (add-to-list 'load-path "/Library/Gambit-C/current/share/emacs/site-lisp")
  (autoload 'gambit-inferior-mode "gambit" "Hook Gambit mode into cmuscheme.")
  (autoload 'gambit-mode "gambit" "Hook Gambit mode into scheme.")
  (add-hook 'inferior-scheme-mode-hook (function gambit-inferior-mode))
  (add-hook 'scheme-mode-hook (function gambit-mode))

  (require 'gambit)
  (load "gambit.el"))

;; ==============================================================================
;;  Chicken Scheme
;; ------------------------------------------------------------------------------

(load "hen.el")
(require 'hen)
