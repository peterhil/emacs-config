;; ==============================================================================
;; Diff
;; ------------------------------------------------------------------------------

(defun update-diff-colors ()
  "update the colors for diff faces"
  (set-face-attribute 'diff-added nil
                      :foreground "white" :background "green")
  (set-face-attribute 'diff-removed nil
                      :foreground "white" :background "red3")
  (set-face-attribute 'diff-changed nil
                      :foreground "white" :background "purple"))

(eval-after-load "diff-mode"
  '(update-diff-colors))
