;; Install dart-mode
(use-package dart-mode
  :ensure t
  :hook (dart-mode . lsp)
  :custom
  (dart-format-on-save t))

(use-package lsp-dart
  :ensure t
  :hook (dart-mode . lsp)
  :init
  (setq lsp-dart-flutter-sdk-dir "/home/nate/dev/opt/flutter"))
