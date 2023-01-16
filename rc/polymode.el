;;
;; Polymode is a framework for multiple major modes (MMM) inside a single Emacs buffer.
;; It is fast and has a simple but flexible object oriented design. Creating new polymodes normally takes a few lines of code.
;;

(use-package polymode
  :mode ("\.ex$" . poly-elixir-web-mode)
  :init (setq web-mode-engines-alist '(("elixir" . "\\.ex\\'")))
  :config
  (define-hostmode poly-elixir-hostmode :mode 'elixir-mode)
  (define-innermode poly-liveview-expr-elixir-innermode
    :mode 'web-mode
    :head-matcher (rx line-start (* space) "~L" (= 3 (char "\"'")) line-end)
    :tail-matcher (rx line-start (* space) (= 3 (char "\"'")) line-end)
    :head-mode 'host
    :tail-mode 'host
    :allow-nested nil
    :keep-in-mode 'host
    :fallback-mode 'host)
  (define-polymode poly-elixir-web-mode
    :hostmode 'poly-elixir-hostmode
    :innermodes '(poly-liveview-expr-elixir-innermode)))

(setq web-mode-engines-alist '(("elixir" . "\\.ex\\'")))
