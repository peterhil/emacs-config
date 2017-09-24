;; ==============================================================================
;; Editing
;; ------------------------------------------------------------------------------

;; Read EditorConfig files (.editorconfig) -- http://editorconfig.org/
;; https://github.com/editorconfig/editorconfig-emacs.git
;; (load "editorconfig")
(require 'editorconfig)
(editorconfig-mode 1)

;; Language and text encoding
(set-language-environment "UTF-8")
(set-default-coding-systems 'utf-8-unix)

;; Save-hist-mode
(setq savehist-additional-variables '(kill-ring search-ring regexp-search-ring))
(setq savehist-file "~/.emacs.d/tmp/savehist")
(savehist-mode 1)

;; Parenthesis matching
(setq show-paren-delay 0)
(show-paren-mode 1)

; Show full pathname in minibuffer
(setq frame-title-format
      (list (format "%s %%S: %%j " (system-name))
            '(buffer-file-name "%f" (dired-directory dired-directory "%b"))))

;; Line numbers etc.
(when t
  (progn
    ;; (global-hl-line-mode t)  ; Hightlight current line

    ;; Show line numbers, dynamically with spaces on either side:
    (global-linum-mode t)

    (defadvice linum-update-window (around linum-dynamic activate)
      (let* ((w (length (number-to-string
                         (count-lines (point-min) (point-max)))))
             (linum-format (concat " %" (number-to-string w) "d ")))
        ad-do-it))

    ;; You may want to turn off linum for certain modes (this uses linum-off):
    (require 'linum-off)

    ;; Highlight the current line number (requires hlinum):
    (require 'hlinum)
    (hlinum-activate)

    ;; Collapse fringes:
    ;; (fringe-mode -1)
    ))


;; Automatically offer to create parent directories
;; http://iqbalansari.me/blog/2014/12/07/automatically-create-parent-directories-on-visiting-a-new-file-in-emacs/
(defun my-create-non-existent-directory ()
  (let ((parent-directory (file-name-directory buffer-file-name)))
    (when (and (not (file-exists-p parent-directory))
               (y-or-n-p (format "Directory `%s' does not exist! Create it?" parent-directory)))
      (make-directory parent-directory t))))

(add-to-list 'find-file-not-found-functions #'my-create-non-existent-directory)


;; ==============================================================================
;; Keyboard macros
;; ------------------------------------------------------------------------------

(fset 'doc-block-macro
   [tab ?/ ?* ?* return tab ?* ?* backspace ?  return tab ?* ?* backspace ?/ return tab ?\C-a up up ?\C-e])


;; ==============================================================================
;; Extra modifiers
;;------------------------------------------------------------------------------

;; Meta
(define-key function-key-map (kbd "C-c m") 'event-apply-meta-modifier)
(define-key function-key-map (kbd "<f16>") 'event-apply-meta-modifier)
(define-key function-key-map (kbd "<S-f6>") 'event-apply-meta-modifier)

;; Super
(define-key function-key-map (kbd "C-c s") 'event-apply-super-modifier)
(define-key function-key-map (kbd "<f17>") 'event-apply-super-modifier)
(define-key function-key-map (kbd "<S-f7>") 'event-apply-super-modifier)

;; Hyper
(define-key function-key-map (kbd "C-c h") 'event-apply-hyper-modifier)
(define-key function-key-map (kbd "<f18>") 'event-apply-hyper-modifier)
(define-key function-key-map (kbd "<S-f8>") 'event-apply-hyper-modifier)


;; ==============================================================================
;; Key bindings
;; ------------------------------------------------------------------------------

;; My bindings
(global-set-key [(control \')] 'comment-or-uncomment-region)

;; Backspace

;; See http://www.emacswiki.org/emacs/BackspaceKey
(global-set-key [(control h)] 'delete-backward-char)

;; Help
(global-set-key [(hyper h)] 'help)

(global-set-key (kbd "<f5>") 'copy-buffer-dir)


;; Disable yas tab key

;; It is crucial you first activate yasnippet's global mode.
;; (yas/global-mode 1)

;; This illustrates how to redefine yas-expand to S-TAB.
;; (define-key yas-minor-mode-map [backtab]     'yas-expand)

;; Strangely, just redefining one of the variations below won't work.
;; All rebinds seem to be needed.
;; (define-key yas-minor-mode-map [(tab)]        nil)
;; (define-key yas-minor-mode-map (kbd "TAB")    nil)
;; (define-key yas-minor-mode-map (kbd "<tab>")  nil)

;; ==============================================================================
;; Fuzzy format (auto select tabs or spaces for indent)
;; ------------------------------------------------------------------------------

(require 'fuzzy-format)
(setq fuzzy-format-default-indent-tabs-mode nil)
(global-fuzzy-format-mode t)

;; ==============================================================================
;; Whitespace
;; ------------------------------------------------------------------------------

;; (require 'whitespace)

;; Or autoload at least one of the commands:
;; `whitespace-mode'
;; `whitespace-toggle-options'
;; `global-whitespace-mode'
;; `global-whitespace-toggle-options'

;; (autoload 'whitespace-mode           "whitespace"
;;   "Toggle whitespace visualization."        t)

(autoload 'whitespace-toggle-options "whitespace"
  "Toggle local `whitespace-mode' options." t)

(global-set-key (kbd "H-w w") 'whitespace-mode)
(global-set-key (kbd "H-w t") 'whitespace-toggle-options)
(global-set-key (kbd "H-w W") 'global-whitespace-mode)
(global-set-key (kbd "H-w T") 'global-whitespace-toggle-options)


;; ==============================================================================
;; Tabs and indentation from http://www.emacswiki.org/emacs/DaveBenjamin
;; ------------------------------------------------------------------------------

(require 'cl)

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


;; ==============================================================================
;; Undo/redo extensions
;; ------------------------------------------------------------------------------

;(require 'redo+)

(require 'undo-tree)
(global-undo-tree-mode)
(global-set-key (kbd "H-x u") 'global-undo-tree-mode)

(define-key function-key-map (kbd "H-z") 'undo)
(define-key function-key-map (kbd "H-Z") 'redo)


(autoload 'longlines-mode "longlines.el"
  "Minor mode for editing long lines." t)

;; Display line numbers in margin (fringe). Emacs 23 only.
(global-linum-mode 1) ; always show line numbers
