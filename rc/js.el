;; ==============================================================================
;; Javascript
;; ------------------------------------------------------------------------------

(fset 'prog-mode 'text-mode)

(require 'js2-mode)

(autoload 'js2-mode "js2-mode" "Js2-mode" t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

;; ==============================================================================
;; Json
;; ------------------------------------------------------------------------------

(autoload 'json-mode "json-mode" "JSON Mode." t)
(add-to-list 'auto-mode-alist '("\\.json$" . json-mode))


;; ==============================================================================
;; Org-json
;; ------------------------------------------------------------------------------

;; (require 'json)
;; (require 'org-json)

;; 1. call (org-json-encode) to convert org(in current buffer) to json,
;;    return convert json.
;; 2. call (org-json-decode json) to convert json to org,
;;    return converted text.

;; (global-set-key (kbd "C-c o j")
;;  '(lambda ()
;;     (interactive)
;;     (org-json-encode)))

;; (global-set-key (kbd "C-c j o")
;;   '(lambda (json)
;;      (interactive)
;;      (org-json-decode json)))