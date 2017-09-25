;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(require 'web-mode)
(add-to-list 'magic-mode-alist '("\\(?:<\\?xml\\s +[^>]*>\\)?\\s *<\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *<\\)*\\(?:!DOCTYPE\\s +[^>]*>\\s *<\\s *\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *\<\\)*\\)?[Hh][Tt][Mm][Ll]" . web-mode))

(add-to-list 'auto-mode-alist '("\\.html\\?\\'" . web-mode))
(add-to-list 'auto-mode-alist '("/components/.*\\.js\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.erb\\'" . web-mode))
(add-to-list 'auto-mode-alist '("\\.jsx\\'" . web-mode))

(setq auto-mode-alist
      (append
       '(
         ("\\.htm\\'" . web-mode)
         ("\\.html\\'" . web-mode)
         ("\\.xhtml\\'" . web-mode)
         ("\\.erb\\'" . web-mode)
         ("\\.mustache\\'" . web-mode)
         ("\\.php\\'" . web-mode)
         ("\\.ctp\\'" . web-mode)
         ("\\.css\\'" . web-mode)
         ("\\.vue\\'" . web-mode)
         )
       auto-mode-alist))

; The matching is done on the path. You can alo configure like this if your templates are stored in a subdirectory called views, html or templates.
(add-to-list 'auto-mode-alist '("/\\(views\\|html\\|templates\\)/.*\\.\\(php\\|twig\\)\\'" . web-mode))

;; Custom coding standards
(add-hook 'web-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width (default-value 'tab-width))
            ))

(setq web-mode-code-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-markup-indent-offset 4)
