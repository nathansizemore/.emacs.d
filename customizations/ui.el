;; UI custimizations

;; Remove start msg, menu and toolbar, and OS scroll bars
(setq inhibit-startup-message t)
(menu-bar-mode -1)
(when (fboundp 'tool-bar-mode)
  (tool-bar-mode -1))
(when (fboundp 'scroll-bar-mode)
  (scroll-bar-mode -1))
;; Font stuff
(set-face-attribute 'default nil :font "Ubuntu Mono")
(set-face-attribute 'default nil :height 110)
(setq-default line-spacing 0.1)
;;
;; Turn of blinking and bell
(blink-cursor-mode 0)
(setq ring-bell-function 'ignore)
;;
;; Theme
(load-theme 'flatland t)
;;
;; Transparent background emacs-GUI
(set-frame-parameter (selected-frame) 'alpha '(100 100))
(add-to-list 'default-frame-alist '(alpha 100 100))
;;
;; Line numbers
(global-linum-mode 1)
;;
;; Line number spacing
(setq linum-format "%d ")
;;
;; Column numbers
(setq column-number-mode t)
;;
;; Window size
(setq frame-resize-pixelwise t)
(dotimes (n 3)
  (toggle-frame-maximized))
