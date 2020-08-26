;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(use-package "web-mode"
  :config
  (progn
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-css-indent-offset 4)
    (setq web-mode-markup-indent-offset 2))
  :magic
  (
    "<\\!DOCTYPE"
    "<\\!doctype"
    "<\\?xml"
    "<html"
    "<svg"
    )
  :mode
  (
    "\\.css\\'"
    "\\.ctp\\'"
    "\\.erb\\'"
    "\\.html?\\'"
    "\\.jsx\\'"
    "\\.marko\\'"
    "\\.mustache\\'"
    "\\.php\\'"
    "\\.svelte\\'"
    "\\.tag\\'"
    "\\.vue\\'"
    "\\.xhtml\\'"
    ;; Matching can be done on the path
    "/\\(views\\|html\\|templates\\)/.*\\.\\(php\\|twig\\)\\'"
    "/components/.*\\.js\\'"
    )
  )
