;; Pure language

;; HideShow support
;; (require 'hideshow)
;; (add-hook 'pure-mode-hook 'hs-minor-mode)

;; Pure documentation browsing with w3m
;; (require 'w3m-load)

(require 'pure-mode)
(add-to-list 'auto-mode-alist '("\\.pure\\(rc\\)?$" . pure-mode))

(add-hook 'pure-mode-hook 'turn-on-font-lock)
(add-hook 'pure-eval-mode-hook 'turn-on-font-lock)
