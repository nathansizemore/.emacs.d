;; Editing customizations

;; Highlights matching parenthesis
(show-paren-mode 1)
;;
;; Highlight current line
(global-hl-line-mode 1)
;;
;; Interactive search key bindings. By default, C-s runs
;; isearch-forward, so this swaps the bindings.
(global-set-key (kbd "C-s") 'isearch-forward-regexp)
(global-set-key (kbd "C-r") 'isearch-backward-regexp)
(global-set-key (kbd "C-M-s") 'isearch-forward)
(global-set-key (kbd "C-M-r") 'isearch-backward)
;;
;; Smart indentation
(define-key global-map (kbd "RET") 'newline-and-indent)
;;
;; Tabs vs spaces
(setq tab-width 4)
(setq-default indent-tabs-mode nil)
;;
;; Proper usage of Home/End keys
(define-key global-map [home] 'back-to-indentation)
(define-key global-map [end] 'end-of-line)
