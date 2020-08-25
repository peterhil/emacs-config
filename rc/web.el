;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(use-package "web-mode"
  :config
  (progn
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-css-indent-offset 4)
    (setq web-mode-markup-indent-offset 2)
    (my-auto-mode-regexps
      'web-mode
      '(
         "/\\(views\\|html\\|templates\\)/.*\\.\\(php\\|twig\\)\\'" ; Matching can be done on the path
         "/components/.*\\.js\\'")))
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
    "css"
    "ctp"
    "erb"
    "htm"
    "html"
    "jsx"
    "marko"
    "mustache"
    "php"
    "svelte"
    "tag"
    "vue"
    "xhtml"
    )
  )
