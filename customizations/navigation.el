;; Navigation customizations

;; Neotree, it rocks!
(neotree-toggle)
;; Default directory
(neotree-dir "~/development")
;; Launch empty scratch on start
(switch-to-buffer-other-window "*scratch*")
;; Hot key for dir toggling
(global-set-key [f8] 'neotree-toggle)
