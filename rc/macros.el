(defun my-make-banner ()
  "Make a banner for a heading"
  (interactive)
  (insert ";; =============================================================================\n")
  (insert ";; \n")
  (insert ";; -----------------------------------------------------------------------------\n")
  (previous-line 2 1)
  (right-char 3))

(define-key prog-mode-map (kbd "M-m b") #'my-make-banner)


;; Delete whitespace at start of line and move rest to the end of previous line
(fset 'my-delete-into-previous-line
      (kmacro-lambda-form
       [?\C-a tab ?\C-  ?\C-a left ?\C-w ?\M-x ?e ?n ?d tab ?k tab] 0 "%d"))

(define-key prog-mode-map (kbd "M-m w") #'my-delete-into-previous-line)
