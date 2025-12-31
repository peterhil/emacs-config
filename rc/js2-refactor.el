;; ==============================================================================
;; JS2-refactor
;; ------------------------------------------------------------------------------

(use-package js2-refactor
  :defer t
  :hook (js2-mode . js2-refactor-mode)
  :config
  (js2r-add-keybindings-with-prefix "C-c C-m"))

;; Refactorings
;; https://github.com/js-emacs/js2-refactor.el#refactorings

;; 3i is ternary-to-if: Converts ternary operator to if-statement.
;; ag is add-to-globals-annotation: Creates a /*global */ annotation if it is missing, and adds the var at point to it.
;; ao is arguments-to-object: Replaces arguments to a function call with an object literal of named arguments.
;; ba is forward-barf: Moves the last child out of current function, if-statement, for-loop or while-loop.
;; cc is contract-node-at-point: Contract bracketed list according to node type at point (array, object, function, call args).
;; dt is debug-this: Adds a debug() statement for what is at point (or region).
;; ec is extract-const: Similar to extract-var but uses a const-statement.
;; ee is expand-node-at-point: Expand bracketed list according to node type at point (array, object, function, call args).
;; ef is extract-function: Extracts the marked expressions out into a new named function.
;; el is extract-let: Similar to extract-var but uses a let-statement.
;; em is extract-method: Extracts the marked expressions out into a new named method in an object literal.
;; ev is extract-var: Takes a marked expression and replaces it with a var.
;; ig is inject-global-in-iife: Creates a shortcut for a marked global by injecting it in the wrapping immediately invoked function expression
;; ip is introduce-parameter: Changes the marked expression to a parameter in a local function.
;; iv is inline-var: Replaces all instances of a variable with its initial value.
;; k is kill: Kills to the end of the line, but does not cross semantic boundaries.
;; lp is localize-parameter: Changes a parameter to a local var in a local function.
;; lt is log-this: Adds a console.log() statement for what is at point (or region). With a prefix argument, use JSON pretty-printing.
;; rv is rename-var: Renames the variable on point and all occurrences in its lexical scope.
;; sl is forward-slurp: Moves the next statement into current function, if-statement, for-loop or while-loop.
;; ss is split-string: Splits a string.
;; st is string-to-template: Converts a string into a template string.
;; sv is split-var-declaration: Splits a var with multiple vars declared, into several var statements.
;; ta is toggle-arrow-function-and-expression: Toggle between function expression to arrow function.
;; tf is toggle-function-expression-and-declaration: Toggle between function name() {} and var name = function ();
;; ts is toggle-function-async: Toggle between an async and a regular function.
;; uw is unwrap: Replaces the parent statement with the selected region.
;; vt is var-to-this: Changes local var a to be this.a instead.
;; wi is wrap-buffer-in-iife: Wraps the entire buffer in an immediately invoked function expression

;; There are also some minor conveniences bundled:

;; C-S-down and C-S-up moves the current line up or down. If the line is an element in an object or array literal, it makes sure that the commas are still correctly placed.
