(use-package multiple-cursors
  :ensure t
  :bind(("C-S-c C-S-c" . mc/edit-lines)
        ("C->" . mc/mark-next-like-this)
        ("C-<" . mc/mark-previous-like-this)
        ("C-c C-<" . mc/mark-all-like-this)
        ("C-c n" . mc/insert-numbers))
  :config
  (setq mc/insert-numbers-default 1)
  )
