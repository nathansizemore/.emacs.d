;; web-mode settings
(add-to-list 'auto-mode-alist (cons (rx ".asp" eos) 'web-mode))
(add-to-list 'auto-mode-alist (cons (rx ".aspx" eos) 'web-mode))
(add-to-list 'auto-mode-alist (cons (rx ".ascx" eos) 'web-mode))
(add-to-list 'auto-mode-alist (cons (rx ".cshtml" eos) 'web-mode))
(add-to-list 'auto-mode-alist (cons (rx ".Master" eos) 'web-mode))
(add-to-list 'auto-mode-alist (cons (rx ".php" eos) 'web-mode))

(setq web-mode-engines-alist
      '(("razor"    . "\\.cshtml\\'")
        ("aspx"    . "\\.aspx\\'")
        ("aspx"    . "\\.ascx\\'")
        ("aspx"    . "\\.Master\\'"))
)
