;; ==============================================================================
;; Tabs and indentation from http://www.emacswiki.org/emacs/DaveBenjamin
;; ------------------------------------------------------------------------------

(require 'cl-lib)


(defun make-tab-stop-list (width max)
  "Build a tab stop list for a given tab width and maximum line width"
  (cl-labels ((aux (i) (if (<= i max) (cons i (aux (+ i width))))))
    (aux width)))


(defun set-tabs-local (width use-tabs)
  "Set local tab width and whether or not tab characters should be used"
  (setq c-basic-offset width)
  (setq sgml-basic-offset width)
  (setq javascript-indent-level width)
  (setq cssm-indent-level width)
  (setq indent-tabs-mode use-tabs)
  (setq tab-stop-list (make-tab-stop-list width 80))
  (setq tab-width width))


(defun make-tabs-global ()
  "Make current local tab settings the default"
  (interactive)
  (setq-default indent-tabs-mode indent-tabs-mode)
  (setq-default tab-stop-list tab-stop-list)
  (setq-default tab-width tab-width))


(defun set-tabs ()
  "Configure tab settings for this buffer"
  (interactive)
  (set-tabs-local
   (- (read-char "Tab width: ") ?0)
   (y-or-n-p "Use tab character? "))
  (if (y-or-n-p "Make settings global? ")
      (make-tabs-global))
  (message nil))


(set-tabs-local 4 nil)
(make-tabs-global)
