(use-package go-mode
  :ensure t
  :hook ((before-save . gofmt-before-save)
         (go-mode . (lambda ()
                      (setq tab-width 4)
                      (add-hook 'before-save-hook 'gofmt-before-save))))
  :bind (:map go-mode-map
              ("C-c C-r" . go-remove-unused-imports)
              ("C-c C-g" . go-goto-imports)
              ("C-c C-k" . godoc))
  :config
  (setq gofmt-command "goimports"))  ;; Use goimports instead of gofmt
