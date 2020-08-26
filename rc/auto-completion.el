;; ==============================================================================
;; Auto completion
;; ------------------------------------------------------------------------------

(use-package auto-complete
  :bind ("M-q" . ac-start)
  :config (auto-complete-mode t))


(use-package ac-dabbrev
  :bind ("<C-M-tab>" . dabbrev-expand))


;; Use C-n/C-p to select candidates
(define-key ac-complete-mode-map "\C-n" 'ac-next)
(define-key ac-complete-mode-map "\C-p" 'ac-previous)

;; Stop completion
(define-key ac-complete-mode-map "\M-." 'ac-stop)

;; Autostart completion
;; (setq ac-auto-start nil)
;; Or start completion when entered 3 characters
;; (setq ac-auto-start 3)


;; Change default sources
(setq ac-sources
      '(ac-source-abbrev
        ac-source-dabbrev
        ;; ac-source-gtags
        ;; ac-source-yasnippet
        ac-source-words-in-buffer))

;; Change sources for particular mode
;; (add-hook 'emacs-lisp-mode-hook
;;   (lambda ()
;;     (setq ac-sources '(ac-source-words-in-buffer ac-source-symbols))))


;; =============================================================================
;; Auto complete tips
;; -----------------------------------------------------------------------------

;; Completion by TAB
;; -----------------
;;
;; (define-key ac-complete-mode-map "\t" 'ac-complete)
;; (define-key ac-complete-mode-map "\r" nil)
;;
;; Do What I Mean mode
;; -------------------
;;
;; If DWIM (Do What I Mean) mode is enabled,
;; the following features is available:
;;
;; a. TAB (ac-expand) behave as completion (ac-complete)
;;    when only one candidate is left
;; b. TAB (ac-expand) behave as completion (ac-complete)
;;    after you select candidate
;; c. Disapear automatically when you
;;    complete a candidate.
;;
;; DWIM mode is enabled by default.
;; You can enable this feature by
;; setting `ac-dwim' to t.

(setq ac-dwim t)
