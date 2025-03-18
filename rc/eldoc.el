;; ==============================================================================
;; ElDoc-minor-mode
;; ------------------------------------------------------------------------------

;; A very simple but effective thing, eldoc-mode is a MinorMode which shows you, in the echo area,
;; the argument list of the function call you are currently writing. Very handy. By NoahFriedman.
;; Part of Emacs.

(use-package eldoc
  :no-require t
  :bind ("C-c e" . eldoc-mode)
  :hook
  ;; (emacs-lisp-mode . turn-on-eldoc-mode)
  (lisp-interaction-mode . turn-on-eldoc-mode)
  (ielm-mode . turn-on-eldoc-mode)
  :config
  (global-eldoc-mode -1))
