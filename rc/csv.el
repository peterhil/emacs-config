;; ==============================================================================
;; Csv files
;; ------------------------------------------------------------------------------

(require 'csv-mode)
(require 'csv-nav)

(add-to-list 'auto-mode-alist '("\\.csv$" . csv-nav-mode))
(add-to-list 'auto-mode-alist '("\\.tsv$" . csv-nav-mode))

