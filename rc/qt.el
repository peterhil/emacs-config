;; ==============================================================================
;; QT
;; ------------------------------------------------------------------------------

;; QML

(require 'qml-mode)

(add-to-list 'auto-mode-alist '("\\.qml\\'" . qml-mode))

(add-hook 'qml-mode-hook
          '(lambda()
             (set (make-local-variable 'electric-indent-chars) nil)
             ))
