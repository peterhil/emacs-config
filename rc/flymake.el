;; ==============================================================================
;; Flymake mode
;; ------------------------------------------------------------------------------

(require 'flymake-coffee)
(add-hook 'coffee-mode-hook 'flymake-coffee-load)

(require 'flymake-css)
(add-hook 'css-mode-hook 'flymake-css-load)

(require 'flymake-json)
(add-hook 'json-mode 'flymake-json-load)
;; (add-hook 'js-mode-hook 'flymake-json-maybe-load)

(require 'flymake-php)
(add-hook 'php-mode-hook 'flymake-php-load)
