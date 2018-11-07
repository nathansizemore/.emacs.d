;; JavaScript shit

(setq js-indent-level 2)

;; Use js2-mode instead
;; (add-to-list 'auto-mode-alist (cons (rx ".js" eos) 'js2-mode))

;; react jsx (for kroger stuff)
(add-to-list 'auto-mode-alist '("components\\/.*\\.js\\'" . rjsx-mode))

;; Force autocomplete in this mode
(require 'auto-complete)
(add-to-list 'ac-modes 'rjsx-mode)
