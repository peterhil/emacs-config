;; ==============================================================================
;; CEDET (integrated since Emacs 23.2)
;; ------------------------------------------------------------------------------

;; Builtin version
(require 'cedet)
(require 'eieio)
(require 'semantic)


;; Load CEDET manually:
;; (require 'cedet-remove-builtin)
;; See cedet/common/cedet.info for configuration details.
;; IMPORTANT: For Emacs >= 23.2, you must place this *before* any
;; CEDET component (including EIEIO) gets activated by another
;; package (Gnus, auth-source, ...).
;; (load-file (concat user-emacs-directory "site-lisp/cedet/cedet-devel-load.el"))

;; ==============================================================================
;; Semantic
;; ------------------------------------------------------------------------------

;; Add further minor-modes to be enabled by semantic-mode.
;; See doc-string of `semantic-default-submodes' for other things
;; you can use here.
(add-to-list 'semantic-default-submodes 'global-semantic-idle-summary-mode t)
(add-to-list 'semantic-default-submodes 'global-semantic-idle-completions-mode t)
(add-to-list 'semantic-default-submodes 'global-cedet-m3-minor-mode t)

;; Enable Semantic
(semantic-mode 1)

;; ==============================================================================
;; EDE
;; ------------------------------------------------------------------------------

;; Enable EDE (Project Management) features
(global-ede-mode 1)


;; ==============================================================================
;; SRecode
;; ------------------------------------------------------------------------------

(require 'srecode)

; Enable template insertion menu
(global-srecode-minor-mode 1)

;; ==============================================================================
;; COGRE - Connected Graph Editor
;; ------------------------------------------------------------------------------

;; (cogre-uml-enable-unicode)
