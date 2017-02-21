;; Nathan's bad-ass emacs config


;; Human info
(setq user-full-name "Nathan Sizemore")
(setq user-mail-address "nathanrsizemore@gmail.com")

;; Define package repositories
(require 'package)
(add-to-list 'package-archives
             '("tromey" . "http://tromey.com/elpa/") t)
(add-to-list 'package-archives
             '("melpa" . "http://melpa.milkbox.net/packages/") t)
(add-to-list 'package-archives
	     '("gnu" . "http://elpa.gnu.org/packages/") t)

;; Load and activate emacs packages
(package-initialize)

;; Download list of packages available from ELPA (Emacs Lisp Package Archive).
;; Learn about it on http://www.emacswiki.org/emacs/ELPA
(when (not package-archive-contents)
  (package-refresh-contents))

;; Packages that must exist
(defvar my-packages
  '(arduino-mode
    cargo
    cmake-mode
    company
    company-tern
    csharp-mode
    flatland-theme
    flycheck
    go-mode
    jquery-doc
    js2-mode
    llvm-mode
    markdown-mode
    multi
    nasm-mode
    neotree
    php-mode
    rust-mode
    swift-mode
    systemd
    toml-mode
    web-mode
    yaml-mode))

;; Iterate over the list of packages and install
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Customizations folder
(defvar my-customizations-folder
  (concat user-emacs-directory "customizations/"))

;; Customizations
(defvar my-customizations
  '("c"
    "company"
    "csharp"
    "editing"
    "html"
    "javascript"
    "markdown"
    "misc"
    "nasm"
    "navigation"
    "rust"
    "shell"
    "ui"
    "xml"))

;; Load customizations
(dolist (c my-customizations)
  (load (concat my-customizations-folder c ".el")))

;; Stupid Unreal and .h files
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Tooltips are stupid
(tooltip-mode nil)
(setq show-help-function nil)
(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(ansi-color-faces-vector
   [default bold shadow italic underline bold bold-italic bold])
 '(ansi-color-names-vector
   (vector "#ffffff" "#bf616a" "#B4EB89" "#ebcb8b" "#89AAEB" "#C189EB" "#89EBCA" "#232830"))
 '(custom-enabled-themes (quote (flatland)))
 '(custom-safe-themes
   (quote
    ("5999e12c8070b9090a2a1bbcd02ec28906e150bb2cdce5ace4f965c76cf30476" "4741c94001cdf4d552bd6bc64751f3dce7cfed37be51a2fd616f752757ce285d" "d05a7f507862ebeaebc34928604bc418c16bc6c10119ebc3a83e04dfa79789a1" "b7d89fda8259121e1f28685dea8fb2df4a57d1b78b346845e0e6265eea2531ea" "a2e7b508533d46b701ad3b055e7c708323fb110b6676a8be458a758dd8f24e27" "0820d191ae80dcadc1802b3499f84c07a09803f2cb90b343678bdb03d225b26b" "98cc377af705c0f2133bb6d340bf0becd08944a588804ee655809da5d8140de6" "5dc0ae2d193460de979a463b907b4b2c6d2c9c4657b2e9e66b8898d2592e3de5" "8453c6ba2504874309bdfcda0a69236814cefb860a528eb978b5489422cb1791" "d8f76414f8f2dcb045a37eb155bfaa2e1d17b6573ed43fb1d18b936febc7bbc2" "9122dfb203945f6e84b0de66d11a97de6c9edf28b3b5db772472e4beccc6b3c5" default)))
 '(fci-rule-color "#343d46")
 '(hl-sexp-background-color "#1c1f26")
 '(neo-hidden-regexp-list
   (quote
    ("^\\." "\\.pyc$" "~$" "^#.*#$" "\\.elc$" "\\.meta$")))
 '(package-selected-packages
   (quote
    (tangotango-theme occidental-theme obsidian-theme yaml-mode web-mode toml-mode systemd swift-mode php-mode neotree nasm-mode multi markdown-mode llvm-mode js2-mode jquery-doc go-mode flycheck flatland-theme csharp-mode company-tern company cmake-mode cargo arduino-mode)))
 '(vc-annotate-background nil)
 '(vc-annotate-color-map
   (quote
    ((20 . "#bf616a")
     (40 . "#DCA432")
     (60 . "#ebcb8b")
     (80 . "#B4EB89")
     (100 . "#89EBCA")
     (120 . "#89AAEB")
     (140 . "#C189EB")
     (160 . "#bf616a")
     (180 . "#DCA432")
     (200 . "#ebcb8b")
     (220 . "#B4EB89")
     (240 . "#89EBCA")
     (260 . "#89AAEB")
     (280 . "#C189EB")
     (300 . "#bf616a")
     (320 . "#DCA432")
     (340 . "#ebcb8b")
     (360 . "#B4EB89"))))
 '(vc-annotate-very-old-color nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
