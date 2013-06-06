;; ==============================================================================
;; Conf-mode
;; ------------------------------------------------------------------------------

(add-to-list 'auto-mode-alist '("\\.conf\\'" . conf-mode))
(add-to-list 'auto-mode-alist '("\\.inc\\'" . conf-mode))

;; (add-hook 'conf-mode-hook
;; 		  (lambda ()
;; 			(setq indent-tabs-mode t)
;; 			(setq tab-width (default-value 'tab-width))))

