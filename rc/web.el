;; ==============================================================================
;; Web mode -- https://github.com/fxbois/web-mode
;; ------------------------------------------------------------------------------

(use-package web-mode
  :magic ("<\\!DOCTYPE"
          "<\\!doctype"
          "<html")
  :mode ("\\.ctp\\'"
         "\\.erb\\'"
         "\\.html?\\'"
         "\\.marko\\'"
         "\\.mustache\\'"
         "\\.tag\\'"
         "\\.twig\\'"
         "\\.vue\\'"
         "\\.xhtml\\'"
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
             (or "php" "py")
             line-end))
  :config
  (progn
    (setq web-mode-code-indent-offset 4)
    (setq web-mode-css-indent-offset 4)
    (setq web-mode-markup-indent-offset 2)))


(use-package web-mode-edit-element
  :hook (web-mode . web-mode-edit-element-minor-mode))
