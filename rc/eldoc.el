;; ==============================================================================
;; ElDoc-minor-mode
;; ------------------------------------------------------------------------------

;; A very simple but effective thing, eldoc-mode is a MinorMode which shows you, in the echo area,
;; the argument list of the function call you are currently writing. Very handy. By NoahFriedman.
;; Part of Emacs.

(global-eldoc-mode -1)

(add-hook 'emacs-lisp-mode-hook 'turn-on-eldoc-mode)
(add-hook 'lisp-interaction-mode-hook 'turn-on-eldoc-mode)
(add-hook 'ielm-mode-hook 'turn-on-eldoc-mode)
