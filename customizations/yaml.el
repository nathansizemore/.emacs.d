;; Unity files that are YAML
(add-to-list 'auto-mode-alist (cons (rx ".anim" eos) 'yaml-mode))
(add-to-list 'auto-mode-alist (cons (rx ".prefab" eos) 'yaml-mode))
(add-to-list 'auto-mode-alist (cons (rx ".unity" eos) 'yaml-mode))
