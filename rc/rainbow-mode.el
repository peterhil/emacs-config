;; ==============================================================================
;; Rainbow mode
;; ------------------------------------------------------------------------------
;;
;; https://julien.danjou.info/projects/emacs-packages#rainbow-mode

(use-package "rainbow-mode"
  ;; (autoload 'rainbow-mode "rainbow-mode.el" "Minor mode for editing HTML colors" t)
  :mode
  (
    "\\.css\\'"
    "\\.html\\'"
    "\\.less\\'"
    "\\.sass\\'"
    "\\.scss\\'"
    "\\.styl\\'"
    "-theme\\.el\\'"
    )
  )
