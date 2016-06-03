;; Rust and stuff

(setq racer-cmd (concat (getenv "HOME") "/.cargo/bin/racer"))
(setq racer-rust-src-path (concat (getenv "HOME") "/development/rust/src"))
(add-to-list 'auto-mode-alist '("\\.rs\\'" . rust-mode))
(add-hook 'rust-mode-hook  #'company-mode)
(add-hook 'rust-mode-hook  #'racer-mode)
(add-hook 'racer-mode-hook #'eldoc-mode)
(add-hook 'rust-mode-hook
          '(lambda ()
             (add-hook 'flycheck-mode-hook #'flycheck-rust-setup)
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)))
