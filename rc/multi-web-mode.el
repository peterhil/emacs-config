;; ==============================================================================
;; Multi-modes
;; ------------------------------------------------------------------------------

(require 'multi-web-mode)

(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js2-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>")))
(setq mweb-filename-extensions '("php[3-5]?" "twig" "html?" "ctp"))
;(multi-web-global-mode t)
