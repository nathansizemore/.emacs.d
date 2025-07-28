;; Configure terraform-mode for Terraform files
(use-package terraform-mode
  :ensure t
  :mode ("\\.tf\\'" . terraform-mode)
  :hook ((terraform-mode . lsp-deferred)
         (terraform-mode . (lambda ()
                             (add-hook 'before-save-hook 'terraform-format-buffer nil t))))
  :config
  (setq terraform-indent-level 2))

;; Configure lsp-mode for language server integration
(use-package lsp-mode
  :ensure t
  :commands (lsp lsp-deferred)
  :config
  (setq lsp-terraform-ls-enable t)
  )
