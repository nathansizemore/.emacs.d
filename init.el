;; Bad Ass™ emacs config
(setq user-full-name "Nathan Sizemore")
(setq user-mail-address "nathanrsizemore@gmail.com")

(require 'package)
(add-to-list 'package-archives '("gnu" . "https://elpa.gnu.org/packages/") t)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/") t)
(package-initialize)

(unless (package-installed-p 'use-package)
  (package-refresh-contents)
  (package-install 'use-package))
(eval-when-compile (require 'use-package))

(use-package exec-path-from-shell :ensure)
(when (memq window-system '(mac ns x))
  (exec-path-from-shell-initialize))

(defvar editor-dir
  (concat user-emacs-directory "editor/"))
(defvar editor-scripts
  '("company"
    "flycheck"
    "lsp"
    "multiple-cursors"
    "text"
    "tree-sitter"
    "treemacs"
    "window"))
(dolist (c editor-scripts)
  (load (concat editor-dir c ".el")))

(defvar lang-dir
  (concat user-emacs-directory "lang/"))
(defvar lang-scripts
  '("c"
    "rust"
    "yaml"))
(dolist (c lang-scripts)
  (load (concat lang-dir c ".el")))

(setq auto-save-file-name-transforms
          `((".*" ,(concat user-emacs-directory "auto-save/") t)))
(setq backup-directory-alist
      `(("." . ,(expand-file-name
                 (concat user-emacs-directory "backups")))))

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes '(flatland))
 '(custom-safe-themes
   '("eb122e1df607ee9364c2dfb118ae4715a49f1a9e070b9d2eb033f1cefd50a908" default))
 '(package-selected-packages
   '(tree-sitter-langs tree-sitter treemacs rust-mode flatland-theme)))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
