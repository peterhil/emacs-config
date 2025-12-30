;; ==============================================================================
;; Startup utils and config before loading modules
;; ------------------------------------------------------------------------------

;; The default is 800 kilobytes. Measured in bytes.
(setq gc-cons-threshold (* 50 1000 1000))

;; Improve lsp perf https://emacs-lsp.github.io/lsp-mode/page/performance/#increase-the-amount-of-data-which-emacs-reads-from-the-process
(setq read-process-output-max (* 1024 1024)) ;; 1mb

(add-hook 'emacs-startup-hook #'daut/display-startup-time)
