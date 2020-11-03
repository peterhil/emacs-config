;; ==============================================================================
;; Javascript
;; ------------------------------------------------------------------------------

(autoload 'javascript-mode "javascript-mode" nil t)


(defun my-disable-electric-indent ()
  (set (make-local-variable 'electric-indent-chars) nil))


(use-package "js2-mode"
  :mode
  (
    ;; "\\.js\\'"
    ;; "\\.ts\\'"
    )
  ;; :hook (js2-mode . 'my-disable-electric-indent)
  :config
  ;; https://stackoverflow.com/questions/35162106/how-to-disable-js2-mode-syntax-checking-globally-in-spacemacs
  (setq js2-strict-missing-semi-warning nil)
  )
