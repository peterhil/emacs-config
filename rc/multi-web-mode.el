;; ==============================================================================
;; Multi web mode
;; ------------------------------------------------------------------------------

(use-package multi-web-mode
  :mode
  "\\.php\\'"
  "\\.twig\\'"
  :config
  ;; (multi-web-global-mode t)

  (setq mweb-default-major-mode 'html-mode)
  (setq mweb-submode-indent-offset 4)
  (setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                     (js2-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                     (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
  (setq mweb-filename-extensions '("php[3-5]?" "twig")))
