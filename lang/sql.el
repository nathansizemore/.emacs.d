(defun my-sql-mode-hook ()
  ;; Disable electric indent mode for SQL buffers
  (electric-indent-local-mode -1)
  ;; Use spaces instead of tabs
  (setq indent-tabs-mode nil)
  ;; Set tab width to 4 spaces
  (setq tab-width 4)
  ;; Set the indentation function to insert a tab character
  (setq indent-line-function 'insert-tab))

;; Add the customized hook to SQL mode
(add-hook 'sql-mode-hook 'my-sql-mode-hook)
