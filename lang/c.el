(use-package cmake-mode
  :ensure t
  :mode ("CMakeLists\\.txt\\'" "\\.cmake\\'")
  :config
)


(use-package clang-format
  :ensure t
  :config
  (setq clang-format-style-option "file")

  (defun my-clang-format-buffer ()
    (interactive)
    (when (or (eq major-mode 'c-mode) (eq major-mode 'c++-mode))
      (clang-format-buffer)))

  (add-hook 'before-save-hook 'my-clang-format-buffer))

(add-hook 'c-mode-hook (lambda ()
                           (setq indent-tabs-mode nil)
                           (setq tab-width 4)
                           (setq standard-indent 4)
                           (setq c-basic-offset 4)))

(add-hook 'c++-mode-hook (lambda ()
                           (setq indent-tabs-mode nil)
                           (setq tab-width 4)
                           (setq standard-indent 4)
                           (setq c-basic-offset 4)))
