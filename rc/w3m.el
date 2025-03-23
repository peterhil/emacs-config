;; =============================================================================
;; W3M web browser
;; -----------------------------------------------------------------------------

(autoload 'w3m-browse-url "w3m" "Ask a WWW browser to show a URL." t)

(setopt browse-url-browser-function 'w3m-browse-url)

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
  :defer t
  :config
  (add-to-list
   'w3m-search-engine-alist
   '("emacs-wiki" "http://www.emacswiki.org/cgi-bin/wiki.pl?search=%s")))
