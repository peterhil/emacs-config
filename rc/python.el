;; ==============================================================================
;; Python-mode
;; ------------------------------------------------------------------------------

(autoload 'python-mode "python-mode" "Python Mode." t)
(add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
;; (add-to-list 'interpreter-mode-alist '("python" . python-mode))

;; (add-hook 'python-mode-hook 'color-theme-monokai)

;; ==============================================================================
;; Pymacs
;; ------------------------------------------------------------------------------

;; Resolves a conflict with Pymacs that comes with python-mode.el
;; (add-hook 'python-mode-hook '(lambda () (setf py-load-pymacs-p nil)))

(require 'pymacs)
;; (autoload ’pymacs-apply "pymacs")
;; (autoload ’pymacs-call "pymacs")
;; (autoload ’pymacs-eval "pymacs" nil t)
;; (autoload ’pymacs-exec "pymacs" nil t)
;; (autoload ’pymacs-load "pymacs" nil t)
;; (autoload ’pymacs-autoload "pymacs")

;;(eval-after-load "pymacs"
;; ’(add-to-list ’pymacs-load-path YOUR-PYMACS-DIRECTORY"))


;; ==============================================================================
;; Ropemacs
;; ------------------------------------------------------------------------------

;; (require 'pymacs)

(defun ropemacs-disable-shortcuts ()
  ;; Ropemacs may redefine some standard Emacs and your custom key
  ;; bindings.  To prevent this, put the following example lines to your
  ;; ``~/.emacs`` *before* (pymacs-load "ropemacs" "rope-"):
  (setq-default ropemacs-enable-shortcuts nil)
  (setq-default ropemacs-local-prefix "C-c C-p"))

;; Note that rope and ropemacs should be in your ``PYTHONPATH`` for this to work.
;; (pymacs-load "ropemacs" "rope-")


;; Loading Lazily

;; If you want to load ropemacs only when you really need it, you can use
;; a function like this in your ``~/.emacs``::

(defun load-ropemacs ()
  "Load pymacs and ropemacs"
  (interactive)
  (ropemacs-disable-shortcuts)
  (require 'pymacs)
  (pymacs-load "ropemacs" "rope-")
  ;; Automatically save project python buffers before refactorings
  (setq-default ropemacs-confirm-saving 'nil))

;; Execute ``load-ropemacs`` (or use ``C-x p l``) whenever you want
;; to use ropemacs.

(global-set-key "\C-xpl" 'load-ropemacs)

