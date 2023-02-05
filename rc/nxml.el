;; ==============================================================================
;; nXml
;; ------------------------------------------------------------------------------

(use-package nxml-mode
  :ensure nil
  :magic
  (
    "<\\?xml"
    )
  :mode
  (
    "\\.rng\\'"
    "\\.rss\\'"
    "\\.sch\\'"
    "\\.svg\\'"
    "\\.xml\\'"
    "\\.xsd\\'"
    "\\.xslt\\'"
    )
  :config
  (setq nxml-child-indent 4)
  (setq nxml-outline-child-indent 4)
  ;; Use following if you would like to edit html files in nxml-mode.
  ;; (fset 'html-mode 'nxml-mode)
  (fset 'xml-mode 'nxml-mode))
