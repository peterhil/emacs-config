;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(use-package web-mode
  :config
  (progn
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-css-indent-offset 4)
    (setq web-mode-markup-indent-offset 2))
  :magic ("<\\!DOCTYPE"
          "<\\!doctype"
          "<html")
  :mode
  ((rx "."
       (or
        "ctp"
        "erb"
        "html?"
        "jsx"
        "marko"
        "mustache"
        "php"
        ;; "svelte"
        "tag"
        "vue"
        "xhtml"
        )
       line-end)
   ;; Matching can be done on the path
   (rx (seq "/"
            (or
             "html"
             "templates"
             "views"
             )
            "/")
       (* (seq (* alnum) "/"))
       ;; Filename
       (+ alnum)
       "."
       (or "php" "twig")
       line-end)
   (rx "/components/"
       (* (seq (* alnum) "/"))
       (+ alnum)
       ".js"
       line-end)))

(use-package web-mode-edit-element
  :hook (web-mode-hook 'web-mode-edit-element-minor-mode))
