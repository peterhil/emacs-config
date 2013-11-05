;; ==============================================================================
;; PHP mode
;; ------------------------------------------------------------------------------

;; (require 'php-mode)
(autoload 'php-mode "php-mode" "Major mode for editing php code." t)

(add-to-list 'auto-mode-alist '("\\.php\\'" . php-mode))

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

;; Use tabs
(add-hook 'php-mode-hook
          '(lambda ()
             (set (make-local-variable 'tab-width) 4)
              (set (make-local-variable 'c-basic-offset) 4)
              (set (make-local-variable 'indent-tabs-mode) t)))


;; Project-specific Indentation Configuration
;; http://www.emacswiki.org/emacs/IndentationBasics#toc4

;; The 'nil' configuration applies to all modes.
;; ((nil . ((indent-tabs-mode . t)
;; 				 (tab-width . 4)
;; 				 (eval . (highlight-regexp "^ *"))))
;; Highlight leading space characters in specific modes.
;; (web-mode . ((eval . (highlight-regexp "^ *"))))
;; )