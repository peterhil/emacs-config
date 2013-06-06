;; ==============================================================================
;; Multi-modes
;; ------------------------------------------------------------------------------

(require 'multi-web-mode)

(setq mweb-default-major-mode 'html-mode)
(setq mweb-tags '((php-mode "<\\?php\\|<\\? \\|<\\?=" "\\?>")
                  (js-mode "\\$this->headScript\\(\\)->captureStart\\(\\)" "\\$this->headScript\\(\\)->captureEnd\\(\\)")
                  (js-mode "<script +\\(type=\"text/javascript\"\\|language=\"javascript\"\\)[^>]*>" "</script>")
                  (js-mode "^\\$(document)\\.ready(function() {" "^});")
                  (css-mode "<style +type=\"text/css\"[^>]*>" "</style>"))
      )
(setq mweb-filename-extensions '("php[3-5]?" "twig" "(p\\|x)?html?" "ctp"))
(multi-web-global-mode t)
