;; ==============================================================================
;; Javascript
;; ------------------------------------------------------------------------------

(require 'js2-mode)

(autoload 'js2-mode "js2-mode" nil t)
(add-to-list 'auto-mode-alist '("\\.js\\'" . js2-mode))

(add-hook 'js2-mode-hook
          '(lambda()
             (fset (make-local-variable 'prog-mode) 'js-mode)
             (set (make-local-variable 'electric-indent-chars) nil)
             ))


;; ==============================================================================
;; JS2-refactor
;; ------------------------------------------------------------------------------

(eval-after-load "js2-refactor-autoloads"
  '(progn
     (if (require 'js2-refactor nil t)
	 (progn
	   ;; (js2-refactor 1)
	   (js2r-add-keybindings-with-prefix "C-c C-j")
	   )
       (warn "js2-refactor is not found."))))

;; Refactorings

;; ef is extract-function: Extracts the marked expressions out into a new named function.
;; em is extract-method: Extracts the marked expressions out into a new named method in an object literal.
;; ip is introduce-parameter: Changes the marked expression to a parameter in a local function.
;; lp is localize-parameter: Changes a parameter to a local var in a local function.
;; eo is expand-object: Converts a one line object literal to multiline.
;; co is contract-object: Converts a multiline object literal to one line.
;; wi is wrap-buffer-in-iife: Wraps the entire buffer in an immediately invoked function expression
;; ig is inject-global-in-iife: Creates a shortcut for a marked global by injecting it in the wrapping immediately invoked function expression
;; ag is add-to-globals-annotation: Creates a /*global */ annotation if it is missing, and adds the var at point to it.
;; ev is extract-var: Takes a marked expression and replaces it with a var.
;; iv is inline-var: Replaces all instances of a variable with its initial value.
;; rv is rename-var: Renames the variable on point and all occurrences in its lexical scope.
;; vt is var-to-this: Changes local var a to be this.a instead.
;; ao is arguments-to-object: Replaces arguments to a function call with an object literal of named arguments.
;; 3i is ternary-to-if: Converts ternary operator to if-statement.
;; sv is split-var-declaration: Splits a var with multiple vars declared, into several var statements.
;; uw is unwrap: Replaces the parent statement with the selected region.


;; ==============================================================================
;; Json
;; ------------------------------------------------------------------------------

(autoload 'json-mode "json-mode" "JSON Mode." t)
(add-to-list 'auto-mode-alist '("\\.json\\'" . json-mode))


;; ==============================================================================
;; Org-json
;; ------------------------------------------------------------------------------

;; (require 'json)
;; (require 'org-json)

;; 1. call (org-json-encode) to convert org(in current buffer) to json,
;;    return convert json.
;; 2. call (org-json-decode json) to convert json to org,
;;    return converted text.

;; (global-set-key (kbd "C-c o j")
;;  '(lambda ()
;;     (interactive)
;;     (org-json-encode)))

;; (global-set-key (kbd "C-c j o")
;;   '(lambda (json)
;;      (interactive)
;;      (org-json-decode json)))
