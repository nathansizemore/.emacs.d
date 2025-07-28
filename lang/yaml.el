(use-package yaml-mode :ensure)

(add-hook 'yaml-mode-hook 'display-line-numbers-mode)

(add-hook 'yaml-mode-hook
          (lambda ()
            (add-hook 'before-save-hook 'delete-trailing-whitespace nil t)))
