;; Navigation customizations

;; Width
(setq neo-window-width 25)
;; Default directory
(neotree-dir "~/development")
;; Launch empty scratch on start
(switch-to-buffer-other-window "*scratch*")
;; Hot key for dir toggling
(global-set-key [f8] 'neotree-toggle)
;; Toggle off?
(neotree-toggle)
