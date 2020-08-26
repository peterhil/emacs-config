;; ==============================================================================
;; QT
;; ------------------------------------------------------------------------------

;; QML

(use-package qml-mode
  :mode "\\.qml\\'"
  :hook
  (
    qml-mode-hook .
    (lambda ()
      (set (make-local-variable 'electric-indent-chars) nil))))
