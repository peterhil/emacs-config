;; ==============================================================================
;; Wikipedia
;; ------------------------------------------------------------------------------

(autoload 'wikipedia-mode
  "wikipedia-mode.el"
  "Major mode for editing documents in Wikipedia markup." t)

;; If you want to associate filenames ending in ".wiki" with
;; wikipedia-mode, add the following to your init file:
(setq auto-mode-alist
      (cons '("\\.wiki\\'" . wikipedia-mode) auto-mode-alist))
