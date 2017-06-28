;; XML style stuff

(setq nxml-child-indent 4 nxml-attribute-indent 4)

(setq auto-mode-alist (cons '("\\.xml$" . nxml-mode) auto-mode-alist))
(setq auto-mode-alist (cons '("\\.ui$" . nxml-mode) auto-mode-alist))
