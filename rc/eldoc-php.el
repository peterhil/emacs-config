;; Php support

(require 'xml)

(add-hook 'php-mode-hook 'turn-on-eldoc-mode)

(setq my-php-function-doc-hash (make-hash-table :test 'equal))

(defun my-php-fetch-function-doc (function)
  (let ((doc (gethash function my-php-function-doc-hash 'nope)))
    (when (eq doc 'nope)
      (setq doc nil)

      (let ((buf (url-retrieve-synchronously (concat "http://php.net/manual-lookup.php?pattern=" function))))
        (with-current-buffer buf
          (goto-char (point-min))
          (let (desc)
            (when (re-search-forward "<div class=\"methodsynopsis dc-description\">\\(\\(.\\|\n\\)*?\\)</div>" nil t)
              (setq desc
                    (replace-regexp-in-string
                     " +" " "
                     (replace-regexp-in-string
                      "\n" ""
                      (replace-regexp-in-string "<.*?>" "" (match-string-no-properties 1)))))
              
              (when (re-search-forward "<p class=\"para rdfs-comment\">\\(\\(.\\|\n\\)*?\\)</p>" nil t)
                (setq desc
                      (concat desc "\n\n"
                              (replace-regexp-in-string
                               " +" " "
                               (replace-regexp-in-string
                                "\n" ""
                                (replace-regexp-in-string "<.*?>" "" (match-string-no-properties 1))))))))

            (if desc
                (setq doc (xml-substitute-special desc)))))

        (kill-buffer buf))

      (puthash function doc my-php-function-doc-hash))

    doc))

(defun my-php-eldoc-function ()
  (let ((symbol (thing-at-point 'symbol)))
    (if (and symbol
             (not (eq (elt symbol 0) ?$)))
        (my-php-fetch-function-doc symbol))))
