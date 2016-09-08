;; Rust and stuff

(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook
          '(lambda ()
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)))
