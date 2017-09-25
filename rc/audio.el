;; ==============================================================================
;; Audio
;; ------------------------------------------------------------------------------


;; ==============================================================================
;; EMMS - Emacs multimedia system
;; ------------------------------------------------------------------------------

;; Simple config
;; (require 'emms-setup)
;; (emms-standard)
;; (emms-default-players)
;; (add-hook 'outline-mode-hook
;;           (lambda ()
;;             (require 'outline-cycle)))

;; Custom config
(require 'emms)
(require 'emms-player-simple)
(require 'emms-source-file)
(require 'emms-source-playlist)
(setq emms-player-list '(emms-player-mpg321 
			 emms-player-ogg123 
			 emms-player-mplayer)
      emms-source-list '((emms-directory-tree "~/Music/")))


;; ==============================================================================
;; Bongo
;; ------------------------------------------------------------------------------

(autoload 'bongo "bongo"
  "Start Bongo by switching to a Bongo buffer." t)

(defun bongo-add-dired-files ()
  "Add marked files to Bongo library"
  (interactive)
  (let (file-point file (files nil))
    (dired-map-over-marks
     (setq file-point (dired-move-to-filename)
           file (dired-get-filename)
           files (append files (list file)))
     nil t)
    (save-excursion
      ;; Is this always safe or can there be more than
      ;; one Bongo buffer?
      (set-buffer bongo-default-library-buffer-name)
      (mapc 'bongo-insert-file files))))

(setq bongo-enabled-backends (quote (mpg123 vlc mplayer speexdec)))
(setq bongo-mplayer-extra-arguments (quote ("-fs")))
(setq bongo-mplayer-interactive t)
(setq bongo-mplayer-program-name "mplayer")
(setq bongo-vlc-interactive nil)
(setq bongo-vlc-program-name "vlc")


;; ==============================================================================
;; Outline-magic
;; ------------------------------------------------------------------------------

;; (add-hook 'outline-minor-mode-hook
;;           (lambda ()
;;             (require 'outline-magic)
;;             (define-key outline-minor-mode-map [(f2)] 'outline-cycle)))
