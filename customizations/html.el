;; HTML shit

;; 4 space indentation
(add-hook 'html-mode-hook
        (lambda ()
          (set (make-local-variable 'sgml-basic-offset) 4)))
