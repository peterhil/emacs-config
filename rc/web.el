;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(require 'web-mode)

(add-to-list 'magic-mode-alist '("\\(?:<\\?xml\\s +[^>]*>\\)?\\s *<\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *<\\)*\\(?:!DOCTYPE\\s +[^>]*>\\s *<\\s *\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *\<\\)*\\)?[Hh][Tt][Mm][Ll]" . web-mode))

(my-auto-mode-regexps
 'web-mode
 '("/\\(views\\|html\\|templates\\)/.*\\.\\(php\\|twig\\)\\'" ; Matching can be done on the path
   "/components/.*\\.js\\'"))

(my-auto-mode-extensions
 'web-mode
 '(
   "css"
   "ctp"
   "erb"
   "html\\?"
   "jsx"
   "mustache"
   "php"
   "vue"
   "xhtml"
   ))

;; Custom coding standards
(add-hook 'web-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width (default-value 'tab-width))
            ))

(setq web-mode-code-indent-offset 4)
(setq web-mode-css-indent-offset 4)
(setq web-mode-markup-indent-offset 2)
