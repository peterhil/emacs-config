;; ==============================================================================
;; Straight
;; ------------------------------------------------------------------------------

;; straight.el: next-generation, purely functional package manager for the Emacs hacker.
;; https://github.com/radian-software/straight.el#readme

(defvar bootstrap-version)
(let ((bootstrap-file
       (expand-file-name "straight/repos/straight.el/bootstrap.el" user-emacs-directory))
      (bootstrap-version 6))
  (unless (file-exists-p bootstrap-file)
    (with-current-buffer
        (url-retrieve-synchronously
         "https://raw.githubusercontent.com/radian-software/straight.el/develop/install.el"
         'silent 'inhibit-cookies)
      (goto-char (point-max))
      (eval-print-last-sexp)))
  (load bootstrap-file nil 'nomessage))


(setq
 ;; Use develop branch for Emacs 29:
 ;; https://jeffkreeftmeijer.com/emacs-straight-use-package/
 straight-repository-branch "develop"

 ;; straight-pull-recipe-repositories t
 ;; straight-recipes-emacsmirror-use-mirror t
 straight-use-package-by-default t)
