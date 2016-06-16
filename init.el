;; Nathan's bad-ass emacs config


;; Human info
(setq user-full-name "Nathan Sizemore")
(setq user-mail-address "nathanrsizemore@gmail.com")

;; Define package repositories
(require 'package)
(add-to-list 'package-archives
             '("marmalade" . "http://marmalade-repo.org/packages/") t)
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
  '(company
    company-tern
    csharp-mode
    exec-path-from-shell
    flatland-theme
    flycheck
    flycheck-rust
    jquery-doc
    js2-mode
    markdown-mode
    neotree
    omnisharp
    racer
    rust-mode
    swift-mode
    toml-mode))

;; Iterate over the list of packages and install
(dolist (p my-packages)
  (when (not (package-installed-p p))
    (package-install p)))

;; Environment variables
(exec-path-from-shell-initialize)
  (exec-path-from-shell-copy-envs
   '("PATH" "CARGO_HOME" "RUST_SRC_PATH" "JAVA_HOME"))

;; Customizations folder
(defvar my-customizations-folder
  (concat user-emacs-directory "customizations/"))
;; Customizations
(defvar my-customizations
  '("company"
    "csharp"
    "editing"
    "html"
    "javascript"
    "markdown"
    "misc"
    "navigation"
    "rust"
    "shell"
    "ui"))
;; Load customizations
(dolist (c my-customizations)
  (load (concat my-customizations-folder c ".el")))
