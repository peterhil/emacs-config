;; (add-to-list 'load-path "/path/to/dash-at-point/dash-at-point.el")
(require 'dash-at-point)
(autoload 'dash-at-point "dash-at-point"
          "Search the word at point with Dash." t nil)
(global-set-key "\C-cd" 'dash-at-point)
(global-set-key "\C-ce" 'dash-at-point-with-docset)
