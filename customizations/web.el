;; web-mode settings
(add-to-list 'auto-mode-alist (cons (rx ".cshtml" eos) 'web-mode))
(add-to-list 'auto-mode-alist (cons (rx ".asp" eos) 'web-mode))

(setq web-mode-engines-alist
      '(("razor"    . "\\.cshtml\\'"))
)
