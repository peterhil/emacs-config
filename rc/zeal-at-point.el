;; =============================================================================
;; Zeal at point
;; -----------------------------------------------------------------------------

(use-package "zeal-at-point"
  :bind ("C-c d" . zeal-at-point)
  :hook
  (
    (c-mode . (lambda () (setq zeal-at-point-docset '("c"))))
    (c++-mode . (lambda () (setq zeal-at-point-docset '("cpp"))))
    (emacs-lisp-mode . (lambda () (setq zeal-at-point-docset '("elisp" "lisp"))))
    (shell-script-mode . (lambda () (setq zeal-at-point-docset '("bash"))))
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
    ;; (ocaml-mode . (lambda () (setq zeal-at-point-docset '("ocaml"))))
    (python-mode . (lambda () (setq zeal-at-point-docset '("python" "django"))))
    (ruby-mode .  (lambda () (setq zeal-at-point-docset '("ruby" "rails"))))
    ;; (rust-mode . (lambda () (setq zeal-at-point-docset '("rust"))))
    ))
