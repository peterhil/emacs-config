;; ==============================================================================
;; Markup
;; ------------------------------------------------------------------------------

(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml$" . yaml-mode))

(require 'less-css-mode)
(add-to-list 'auto-mode-alist '("\\.less$" . less-css-mode))

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

(add-to-list 'auto-mode-alist
             (cons (concat "\\." (regexp-opt '("xml" "xsd" "sch" "rng" "xslt" "svg" "rss") t) "\\'")
                   'nxml-mode))

(unify-8859-on-decoding-mode)

(setq magic-mode-alist
      (cons '("<＼＼?xml " . nxml-mode)
            magic-mode-alist))

(fset 'xml-mode 'nxml-mode)

;; Use following if you would like to edit html files in nxml-mode.
; (fset 'html-mode 'nxml-mode)

;; ==============================================================================
;; HTML and SGML options
;; ------------------------------------------------------------------------------

(add-hook 'sgml-mode-hook
  (lambda ()
    ;; Default indentation, but let SGML mode guess, too.
    (set (make-local-variable 'sgml-basic-offset) 4)
    (sgml-guess-indent)))

;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(require 'web-mode)
(add-to-list 'auto-mode-alist
             (cons (concat "\\."
                           (regexp-opt
                            '(
                              "php[3-5]?"
                              "phtml"
                              "x?html?"
                              "tpl\\.php"
                              "jsp"
                              "as[cp]x"
                              "erb"
                              "mustache"
                              "ctp"
                              ) t)
                           "\\'")
                   'web-mode))

; The matching is done on the path. You can alo configure like this if your templates are stored in a subdirectory called views, html or templates.
(add-to-list 'auto-mode-alist '("/\\(views\\|html\\|templates\\)/.*\\.php\\'" . web-mode))

;; Custom coding standards
(add-hook 'web-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (setq tab-width (default-value 'tab-width))
            ))