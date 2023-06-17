(use-package flatland-theme :ensure)

(tool-bar-mode -1)

(set-frame-parameter (selected-frame) 'alpha '(85 . 85))
(add-to-list 'default-frame-alist '(alpha . (85 . 85)))

(add-hook 'prog-mode-hook 'display-line-numbers-mode)
