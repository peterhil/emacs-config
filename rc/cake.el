;; ==============================================================================
;; CakePHP minor mode
;; https://github.com/k1LoW/emacs-cake/wiki
;; ------------------------------------------------------------------------------

;; (require 'cl)
;; (require 'anything)
(require 'cake)
(global-cake nil)

;; If you use default key map, Put the following expression into your ~/.emacs.
(cake-set-default-keymap)

(add-to-list 'auto-mode-alist '("\\.ctp$" . php-mode))

;; ------------------------------------------------------------------------------
;; Cake auto-complete

;; (require 'ac-cake)
;; (add-hook 'php-mode-hook
;;           (lambda ()
;;             (make-local-variable 'ac-sources)
;;             (setq ac-sources '(ac-source-cake
;;                                ;ac-source-gtags
;;                                ;ac-source-yasnippet
;;                                ;ac-source-php-completion
;;                                ))))

;; ------------------------------------------------------------------------------
;; Cake YASnippet support

;; If you use yasnippet, Put snippets/ into YASnippet load-directory.
;; And put the following expression before yas/initialize()
(add-hook 'cake-hook
          #'(lambda ()
              (setq yas/mode-symbol 'cake)))
