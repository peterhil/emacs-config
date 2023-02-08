;; ==============================================================================
;; Flymake mode
;; ------------------------------------------------------------------------------

(use-package flymake-coffee
  :hook (coffee-mode . flymake-coffee-load))

(use-package flymake-css
  :hook (css-mode . flymake-css-load))

(use-package flymake-json
  :hook
  ((json-mode . flymake-json-load)
    (js-mode . flymake-json-maybe-load)))

(use-package flymake-php
  :hook (php-mode . flymake-php-load))
