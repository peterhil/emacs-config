;; =============================================================================
;; W3M web browser
;; -----------------------------------------------------------------------------

(setq browse-url-browser-function 'w3m-browse-url)
(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

;; Optional keyboard shortcut
(global-set-key "\C-xm" 'browse-url-at-point)

;; Text encoding UTF-8
(setq w3m-coding-system 'utf-8
      w3m-file-coding-system 'utf-8
      w3m-file-name-coding-system 'utf-8
      w3m-input-coding-system 'utf-8
      w3m-output-coding-system 'utf-8
      w3m-terminal-coding-system 'utf-8)

;; W3M settings
(setq w3m-use-cookies t)

(use-package w3m-search
  :config
  (add-to-list
   'w3m-search-engine-alist
   '("emacs-wiki" "http://www.emacswiki.org/cgi-bin/wiki.pl?search=%s")))
