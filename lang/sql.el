(defun my-sql-mode-hook ()
  (add-hook 'hack-local-variables-hook
            (lambda ()
              (setq-default indent-tabs-mode nil)
              (setq-default tab-width 4)
              (setq indent-line-function 'insert-tab))
            nil t))

(add-hook 'sql-mode-hook 'my-sql-mode-hook)
