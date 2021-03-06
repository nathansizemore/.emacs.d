;; Markdown shit

;; Make it all Github flavored
(add-to-list 'load-path "~/.emacs.d/elpa")
(autoload 'gfm-mode "markdown-mode.el" "Major mode for editing Markdown files" t)
(add-to-list 'auto-mode-alist (cons (rx ".md" eos) 'gfm-mode))
(add-to-list 'auto-mode-alist (cons (rx ".markdown" eos) 'gfm-mode))

;; Trailing whitespace is important in Markdown.
(add-hook 'gfm-mode-hook
          (lambda ()
            (remove-hook 'before-save-hook 'delete-trailing-whitespace t)))
