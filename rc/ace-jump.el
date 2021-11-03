;; ==============================================================================
;; Ace jump mode
;; ------------------------------------------------------------------------------

(use-package ace-jump-mode
  :commands (ace-jump-mode
             ace-jump-mode-pop-mark
             ace-jump-mode-enable-mark-sync)
  :ensure t
  :defer t
  :hook ((prog-mode-hook . ace-jump-mode)
         (ace-jump-mode-hook . ace-jump-mode-enable-mark-sync))
  :config
  (autoload 'ace-jump-mode "ace-jump-mode" "Emacs quick move minor mode" t)
  (autoload 'ace-jump-mode-pop-mark "ace-jump-mode" "Ace jump back :-)" t)

  :init
  ;; you can select the keys you prefer
  (define-key global-map (kbd "C-c SPC") 'ace-jump-mode)
  (define-key global-map (kbd "C-x SPC") 'ace-jump-mode-pop-mark))
