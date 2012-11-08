;; ==============================================================================
;; Audio
;; Outline-magic
;; ------------------------------------------------------------------------------

;; EMMS - Emacs multimedia system
(require 'emms-setup)
(emms-standard)
(emms-default-players)
;; (add-hook 'outline-mode-hook
;;           (lambda ()
;;             (require 'outline-cycle)))

;; Bongo
(autoload 'bongo "bongo"
  "Start Bongo by switching to a Bongo buffer." t)
;; (add-hook 'outline-minor-mode-hook
;;           (lambda ()
;;             (require 'outline-magic)
;;             (define-key outline-minor-mode-map [(f2)] 'outline-cycle)))

