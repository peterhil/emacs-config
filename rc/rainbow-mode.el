;; ==============================================================================
;; Rainbow mode
;; ------------------------------------------------------------------------------
;;
;; https://julien.danjou.info/projects/emacs-packages#rainbow-mode

(require 'rainbow-mode)
(autoload 'rainbow-mode "rainbow-mode.el" "Minor mode for editing HTML colors" t)

(my-auto-minor-mode-extensions
 'rainbow-mode
 '("css"
   "html"
   "less"
   "sass"
   "scss"
   "styl"))

(add-to-list 'auto-minor-mode-alist '("-theme\\.el\\'" . rainbow-mode))
