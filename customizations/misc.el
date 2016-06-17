;; Miscellaneous shit

;; Changes all yes/no questions to y/n type
(fset 'yes-or-no-p 'y-or-n-p)
;;
;; No need for # or ~ files when editing
(setq create-lockfiles nil)
(setq make-backup-files nil)
;;
;; Delete trailing whitespace
(add-hook 'before-save-hook 'delete-trailing-whitespace)
