(use-package protobuf-mode
  :ensure t
  :mode ("\\.proto\\'" . protobuf-mode)
  :hook (protobuf-mode . (lambda ()
                           (setq c-basic-offset 4))))
