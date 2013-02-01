;; ==============================================================================
;; PHP mode
;; ------------------------------------------------------------------------------

(require 'php-mode)
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

(add-to-list 'auto-mode-alist '("\\.php$" . php-mode))
(add-to-list 'auto-mode-alist '("\\.inc$" . php-mode))

(add-hook 'php-mode-hook
          (lambda ()
            (defun ywb-php-lineup-arglist-intro (langelem)
              (save-excursion
                (goto-char (cdr langelem))
                (vector (+ (current-column) c-basic-offset))))
            (defun ywb-php-lineup-arglist-close (langelem)
              (save-excursion
                (goto-char (cdr langelem))
                (vector (current-column))))
            (c-set-offset 'arglist-intro 'ywb-php-lineup-arglist-intro)
            (c-set-offset 'arglist-close 'ywb-php-lineup-arglist-close)))

;; php-completion
(add-hook 'php-mode-hook
          '(lambda ()
             (require 'php-completion)
             (php-completion-mode t)
             (define-key php-mode-map (kbd "C-o") 'phpcmp-complete)))

(add-hook 'php-mode-hook
          '(lambda () (define-abbrev php-mode-abbrev-table "ex" "extends")))

;; Cooperation with auto-complete.el:
(add-hook 'php-mode-hook
          '(lambda ()
             (when (require 'auto-complete nil t)
               (make-variable-buffer-local 'ac-sources)
               (add-to-list 'ac-sources 'ac-source-php-completion)
               ;; if you like patial match,
               ;; use `ac-source-php-completion-patial' instead of `ac-source-php-completion'.
               ;(add-to-list 'ac-sources 'ac-source-php-completion-patial)
               (auto-complete-mode t))))

;; Custom coding standards
(add-hook 'php-mode-hook
          (lambda ()
            (setq indent-tabs-mode t)
            (setq tab-width (default-value 'tab-width))
            ))