;; (set-frame-font "Ubuntu Mono 11" nil t)
(set-frame-font "Iosevka 10" nil t)

(set-default 'truncate-lines t)

(setq-default indent-tabs-mode nil)

(add-hook 'before-save-hook 'my-prog-nuke-trailing-whitespace)

(defun my-prog-nuke-trailing-whitespace ()
  (when (derived-mode-p 'prog-mode)
    (delete-trailing-whitespace)))
