;; Ensure you have use-package installed and configured

;; LSP Mode
(use-package lsp-mode
  :commands (lsp lsp-deferred)
  :hook ((typescript-mode . lsp-deferred))
  :init
  (setq lsp-keymap-prefix "C-c l")
  :config)

;; Typescript Mode
(use-package typescript-mode
  :ensure t
  :mode ("\\.ts\\'" . typescript-mode)
  :hook (typescript-mode . lsp-deferred)
  :config
  (setq typescript-indent-level 2))

;; Company Mode for autocompletion (optional but recommended)
(use-package company
  :hook (lsp-mode . company-mode)
  :config
  (setq company-minimum-prefix-length 1
        company-idle-delay 0.0))
