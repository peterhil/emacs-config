;; ==============================================================================
;; Rainbow mode
;; ------------------------------------------------------------------------------
;;
;; https://julien.danjou.info/projects/emacs-packages#rainbow-mode

;; (autoload 'rainbow-mode "rainbow-mode.el" "Minor mode for editing HTML colors" t)

(use-package "rainbow-mode"
  :mode (
         "-theme\\.el\\'"
         "\\.css\\'"
         "\\.html\\'"
         "\\.less\\'"
         "\\.sass\\'"
         "\\.scss\\'"
         "\\.styl\\'"
         ))
