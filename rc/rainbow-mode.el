;; ==============================================================================
;; Rainbow mode
;; ------------------------------------------------------------------------------
;;
;; https://julien.danjou.info/projects/emacs-packages#rainbow-mode

(require 'rainbow-mode)
(autoload 'rainbow-mode "rainbow-mode.el" "Minor mode for editing HTML colors" t)

(my-auto-mode-extensions
 'rainbow-mode
 '("css"
   "html"
   "less"
   "sass"
   "scss"
   "styl"))
