;; C type shit

(add-hook 'c-mode-hook  #'company-mode)
(add-hook 'c-mode-hook
          '(lambda ()
             (local-set-key (kbd "TAB") #'company-indent-or-complete-common)))
