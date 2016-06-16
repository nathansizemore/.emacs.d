;; C# shit

;; Not sure if this is correct, but it makes C# work.
;;
;; (require 'cl)
;; (require 'csharp-mode)
(add-to-list 'auto-mode-alist `(,(rx ".cs" string-end) . csharp-mode))

(add-to-list 'auto-mode-alist '("\\.cs\\'" . csharp-mode))
(add-hook 'csharp-mode-hook #'company-mode)
(add-hook 'csharp-mode-hook #'omnisharp-mode)

(eval-after-load 'company
  '(add-to-list 'company-backends 'company-omnisharp))
