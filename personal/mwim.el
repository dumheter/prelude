(prelude-require-package 'mwim)

;;mwim
(global-set-key (kbd "C-a") 'mwim-beginning-of-code-or-line)
(global-set-key (kbd "C-e") 'mwim-end-of-code-or-line)
(global-set-key (kbd "<home>") 'mwim-beginning-of-line-or-code)
(global-set-key (kbd "<end>") 'mwim-end-of-line-or-code)
