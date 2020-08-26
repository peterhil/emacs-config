(defun macro-make-banner ()
  "Make a banner for a heading"
  (interactive)
  (insert ";; =============================================================================\n")
  (insert ";; \n")
  (insert ";; -----------------------------------------------------------------------------\n")
  (previous-line 2 1)
  (right-char 3))
