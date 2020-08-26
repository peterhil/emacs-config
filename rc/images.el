;; ==============================================================================
;; Images
;; ------------------------------------------------------------------------------

;; Emacs Image Manipulation mode (uses ImageMagick)
;; http://www.emacswiki.org/emacs/EmacsImageManipulation
;; Switch the minor mode on for all image-mode buffers with 'M-x eimp':
;;
(autoload 'eimp-mode "eimp" "Emacs Image Manipulation Package." t)
(add-hook 'image-mode-hook 'eimp-mode)


;; Inkmacs -- experimental Emacs Inkscape bridge
;; (use-package inkmacs)


(my-auto-mode-extensions
 'image-mode
 '(
   "bmp"
   "gif"
   "ico"
   "jpe\\?g"
   "png"
   "tiff\\?"
   ))

(auto-image-file-mode 1)

;; (define-key 'image-mode-map (kbd "\\'") 'switch-to-other-buffer) ; <- Does not work?! Was eal-define-key


(defun image-mode-settings ()
  "Settings for `image-mode'."
  (use-package ppm-gen
    :load-path "site-lisp/ppm-gen")

  (defadvice image-type (around image-type-bmp first (source &optional type data-p) activate)
    (setq ad-return-value
	  (cond (data-p (if (string-match "^BM" source) 'bmp ad-do-it))
		(t (if (string-match ".*\\.bmp" source) 'bmp ad-do-it)))))

  (defadvice create-image (around create-image-bmp (file-or-data &optional type data-p &rest props) activate)
    (setq ad-return-value
	  (cond ((eq 'bmp type) (let (ppm-obj ppm-data)
				  (setq ppm-obj (ppm-from-bmp file-or-data))
				  (setq ppm-data (with-temp-buffer
						   (set-buffer-multibyte nil)
						   (with-slots ((w width)
								(h height)
								pixels) ppm-obj
								(insert (format "P6 %d %d 255\r" w h))
								(insert (concat pixels)))
						   (buffer-substring-no-properties (point-min) (point-max))))
				  (create-image ppm-data 'pbm t)))
		(t ad-do-it)))))


(eval-after-load "image-mode"
  `(image-mode-settings))


(provide 'image-mode-settings)
