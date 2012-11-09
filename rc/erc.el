;; ==============================================================================
;; ERC - Emacs Internet Relay Chat (IRC) client
;; ------------------------------------------------------------------------------

(require 'erc)

;; ------------------------------------------------------------------------------
;; Highlight nicknames extension

(require 'erc-highlight-nicknames)
;; OR
;; (and
;;  (require 'erc-highlight-nicknames)
;;  (add-to-list 'erc-modules 'highlight-nicknames)
;;  (erc-update-modules))

;; Modification to avoid highlighting notices (and breaking erc-track)

;; modify nickname highlighting
(defvar is-notice-property) ;; just a symbol for use as text prop name
(defadvice erc-highlight-notice (after note-notice-on-highlight activate)
  "Annotate notices with is-notice-property"
  (put-text-property 0 (length s) 'is-notice-property 't s))

;; unactivated modification to erc-get-server-user to reject self.
(defadvice erc-get-server-user (around erc-get-server-user-notself)
  (if (not (string-equal nick (erc-current-nick)))
      ad-do-it))

(defadvice erc-highlight-nicknames (around disable-nick-highlight-for-notice activate)
  "only allow nick highlighting when not a notice, and disable
   highlighting of own nick"
  (re-search-forward "\\w+" nil t 2) ;; make sure we skip leading timestamp
  (unless (get-text-property (point) 'is-notice-property)
    ;; don't re-highlight self, as it does nothing but break erc-track
    (ad-activate-regexp "erc-get-server-user-notself")
    ad-do-it
    (ad-deactivate-regexp "erc-get-server-user-notself")))

;; ------------------------------------------------------------------------------
;; Colorize logs
;; I use this to colorize my log files
;; http://www.emacswiki.org/emacs/ErcHighlightNicknames#toc6

(setq erc-nick-color-alist '(("peterhil" . "orange")
                             ("peterhil`" . "orange")
			     ("peterhil-" . "orange")))

(defun erc-get-color-for-nick (nick)
  "Gets a color for NICK. If NICK is specified in erc-nick-color-alist, use it, else hash the nick and get a color from that"
  (or (cdr (assoc nick erc-nick-color-alist))
      (nth
       (mod (string-to-number
             (substring (md5 nick) 0 6) 16)
            (length erc-colors-list))
       erc-colors-list)))

(defun irc-log-colorize ()
  "Colorise the match with the appropriate color"
  (put-text-property
   (match-beginning 1) (match-end 1)
   'face `((:foreground ,(erc-get-color-for-nick (match-string 1)))
           (:weight bold))))

(setq irc-log-keywords
      `((,(format "<\\(%s\\)>" erc-valid-nick-regexp) 1 (irc-log-colorize))))

;; undefine some syntax that's messing up with our coloring (for instance, "")
(defvar irc-log-mode-syntax-table
  (let ((st (make-syntax-table)))
    (modify-syntax-entry ?\" ".   " st)
    (modify-syntax-entry ?\\ ".   " st)
    st)
  "Syntax table used while in `irc-log-mode'.")

(define-derived-mode irc-log-mode fundamental-mode
  (setq font-lock-defaults '(irc-log-keywords))
  (setq mode-name "IRC Log"))
