;; ==============================================================================
;; PHP mode
;; ------------------------------------------------------------------------------

(defun my-ywb-php-lineup-arglist ()
  (defun ywb-php-lineup-arglist-intro (langelem)
    (save-excursion
      (goto-char (cdr langelem))
      (vector (+ (current-column) c-basic-offset))))
  (defun ywb-php-lineup-arglist-close (langelem)
    (save-excursion
      (goto-char (cdr langelem))
      (vector (current-column))))
  (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
  (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close))


(use-package php-mode
  :config (autoload 'php-mode "php-mode" "Major mode for editing php code." t)
  :mode ("\\.php\\'" "\\.inc\\'")
  :hook
  (
    (php-mode .
      (lambda ()
        ;; (setq indent-tabs-mode nil)
        ;; (setq tab-width (default-value 'tab-width))
        (my-ywb-php-lineup-arglist)
        (define-abbrev php-mode-abbrev-table "ex" "extends")
        ))))


(use-package php-completion
  :hook php-mode
  :config (php-completion-mode t)
  :bind ("C-o" . phpcmp-complete))


;; Cooperation with auto-complete.el
(use-package auto-complete
  :hook (php-mode .
          (lambda ()
            (make-variable-buffer-local 'ac-sources)

            ;; If you like patial match, use `ac-source-php-completion-patial'
            ;; instead of `ac-source-php-completion':
            (add-to-list 'ac-sources 'ac-source-php-completion)
            ;; (add-to-list 'ac-sources 'ac-source-php-completion-patial)

            (auto-complete-mode t))))


(use-package php-auto-yasnippets
  :bind ("C-c C-y" . yas/create-php-snippet)
  :config
  ;; Auto-complete setup
  ;; (payas/ac-setup)
  )
