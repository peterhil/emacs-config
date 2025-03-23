;; ==============================================================================
;; Keyboard / input method settings
;; ------------------------------------------------------------------------------

;; Language and text encoding

(setopt locale-coding-system 'utf-8)
(setopt read-quoted-char-radix 10)       ; use decimal, not octal

(set-language-environment "UTF-8")       ; prefer utf-8 for language settings
(set-input-method nil)                   ; no funky input for normal editing

(prefer-coding-system 'utf-8)

(set-default-coding-systems 'utf-8-unix)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
