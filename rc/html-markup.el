;; ==============================================================================
;; Markup
;; ------------------------------------------------------------------------------

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.ya\\?ml\\'" . yaml-mode))

(require 'less-css-mode)
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

;; ==============================================================================
;; nXhtml - package (includes php-mode and LOTS of other stuff)
;; ------------------------------------------------------------------------------

; (load "~/.emacs.d/site-lisp/nxhtml/autostart")

;; ==============================================================================
;; nXml
;; ------------------------------------------------------------------------------

;; To have files automatically loaded with nxml-mode with various file extensions:

;; path to where nxml is
;; (set 'nxml-path (concat site-lisp-path "nxml-mode/"))
;; (set 'nxml-path "/opt/local/share/emacs/23.3/lisp/nxml/")
;; (load (concat nxml-path "rng-auto.el"))

(require 'nxml-mode)
(setq auto-mode-alist
      (append
       '(
         ("\\.xml\\'" . nxml-mode)
         ("\\.xsd\\'" . nxml-mode)
         ("\\.sch\\'" . nxml-mode)
         ("\\.rng\\'" . nxml-mode)
         ("\\.xslt\\'" . nxml-mode)
         ("\\.svg\\'" . xml-mode)
         ("\\.rss\\'" . nxml-mode)
         )
       auto-mode-alist))

(setq magic-mode-alist
      (cons '("<\\?xml " . nxml-mode)
            magic-mode-alist))

(fset 'xml-mode 'nxml-mode)

;; Use following if you would like to edit html files in nxml-mode.
; (fset 'html-mode 'nxml-mode)

;; ==============================================================================
;; HTML and SGML options
;; ------------------------------------------------------------------------------

(require 'nxhtml-mode)

(add-hook 'sgml-mode-hook
  (lambda ()
    ;; Default indentation, but let SGML mode guess, too.
    (make-local-variable 'sgml-basic-offset)
    (setq-default sgml-basic-offset 4)
    (sgml-guess-indent)))

;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(require 'web-mode)
(add-to-list 'magic-mode-alist '("\\(?:<\\?xml\\s +[^>]*>\\)?\\s *<\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *<\\)*\\(?:!DOCTYPE\\s +[^>]*>\\s *<\\s *\\(?:!--\\(?:[^-]\\|-[^-]\\)*-->\\s *\<\\)*\\)?[Hh][Tt][Mm][Ll]" . web-mode))

(add-to-list 'auto-mode-alist '("\\.html\\?\\'" . web-mode))

;; (setq auto-mode-alist
;;       (append
;;        '(
;;          ("\\.htm\\'" . web-mode)
;;          ("\\.html\\'" . web-mode)
;;          ("\\.xhtml\\'" . web-mode)
;;          ("\\.erb\\'" . web-mode)
;;          ("\\.mustache\\'" . web-mode)
;;          ("\\.php\\'" . web-mode)
;;          ("\\.ctp\\'" . web-mode)
;;          )
;;        auto-mode-alist))

; The matching is done on the path. You can alo configure like this if your templates are stored in a subdirectory called views, html or templates.
(add-to-list 'auto-mode-alist '("/\\(views\\|html\\|templates\\)/.*\\.\\(php\\|twig\\)\\'" . web-mode))

;; Custom coding standards
(add-hook 'web-mode-hook
          (lambda ()
            (setq indent-tabs-mode nil)
            (setq tab-width (default-value 'tab-width))
            ))
