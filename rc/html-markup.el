;; ==============================================================================
;; Markup
;; ------------------------------------------------------------------------------

(require 'jinja2-mode)

;; YAML
(require 'yaml-mode)
(add-to-list 'auto-mode-alist '("\\.yml\\'" . yaml-mode))
(add-to-list 'auto-mode-alist '("\\.yaml\\'" . yaml-mode))

;; CSS mode
(require 'css-mode)
(add-to-list 'auto-mode-alist '("\\.css\\'" . css-mode))

;; Less CSS
(require 'less-css-mode)
(add-to-list 'auto-mode-alist '("\\.less\\'" . less-css-mode))

;; Stylus
(require 'stylus-mode)
(add-to-list 'auto-mode-alist '("\\.styl\\'" . stylus-mode))

;; Scss/Sass
;; (setq exec-path (cons (expand-file-name "~/.rvm/gems/ruby-2.0.0-p481/bin") exec-path))
(setq scss-compile-at-save nil)
(autoload 'scss-mode "scss-mode")
(add-to-list 'auto-mode-alist '("\\.scss\\'" . scss-mode))

;; Jade and Stylus
;; (add-to-list 'load-path "~/.emacs.d/site-lisp/jade-mode")
; (require 'sws-mode)
; (add-to-list 'auto-mode-alist '("\\.styl$" . sws-mode))
; (require 'jade-mode)
; (add-to-list 'auto-mode-alist '("\\.jade$" . jade-mode))

;; ==============================================================================
;; nXhtml - package (includes php-mode and LOTS of other stuff)
;; ------------------------------------------------------------------------------

;; (load "~/.emacs.d/site-lisp/nxhtml/autostart")

; FIXME Workaround for bug #663737: https://bugs.launchpad.net/nxhtml/+bug/663737
(if (boundp 'image-types)
    nil
  (defvar image-types nil))

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

(cl-fset 'xml-mode 'nxml-mode)

(setq nxml-child-indent 4)
(setq nxml-outline-child-indent 4)


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
