(defun macro-make-banner ()
  "Make a banner for a heading"
  (interactive)
  (insert ";; =============================================================================\n")
  (insert ";; \n")
  (insert ";; -----------------------------------------------------------------------------\n")
  (previous-line 2 1)
  (right-char 3))


;; Delete whitespace at start of line and move rest to the end of previous line
(fset 'my-delete-and-align
      (kmacro-lambda-form [?\C-a tab ?\C-  ?\C-a left ?\C-w ?\M-x ?e ?n ?d tab ?k tab] 0 "%d"))

(define-key prog-mode-map (kbd "C-M-S-<backspace>") #'my-delete-and-align)
