;; =============================================================================
;; Zeal at point
;; -----------------------------------------------------------------------------

(use-package zeal-at-point
  :bind ("C-c d" . zeal-at-point)
  :hook
  (
    (c-mode . (lambda () (setq zeal-at-point-docset '("c"))))
    ((css-mode less-css-mode sass-mode scss-mode stylus.mode) . (lambda () (setq zeal-at-point-docset '("css"))))
    (c++-mode . (lambda () (setq zeal-at-point-docset '("cpp"))))
    (emacs-lisp-mode . (lambda () (setq zeal-at-point-docset '("elisp" "lisp"))))
    (web-mode . (lambda () (setq zeal-at-point-docset '("html"))))
    ((javascript-mode js2-mode) . (lambda ()
                  (setq zeal-at-point-docset
                    '(
                       "javascript"
                       "jasmine"
                       "jquery"
                       "lodash"
                       "webpack"
                       "zepto"
                       ))))
    (haskell-mode . (lambda () (setq zeal-at-point-docset '("haskell"))))
    (lua-mode . (lambda () (setq zeal-at-point-docset '("lua"))))
    (tuareg-mode . (lambda () (setq zeal-at-point-docset '("ocaml"))))
    (python-mode . (lambda () (setq zeal-at-point-docset '("python" "django"))))
    (ruby-mode .  (lambda () (setq zeal-at-point-docset '("ruby" "rails" "haml"))))
    ;; (rust-mode . (lambda () (setq zeal-at-point-docset '("rust"))))
    (shell-script-mode . (lambda () (setq zeal-at-point-docset '("bash"))))
    ))
