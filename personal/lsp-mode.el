;;;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
;;(setq lsp-keymap-prefix "s-l")
;;
;;(use-package lsp-mode
;;  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
;;         (c++-mode . lsp)
;;         (c-mode . lsp)
;;         (rust-mode . lsp)
;;         (python-mode . lsp)
;;         ;; if you want which-key integration
;;         (lsp-mode . lsp-enable-which-key-integration))
;;  :commands lsp)
;;
;;;; optionally
;;(use-package lsp-ui :commands lsp-ui-mode)
;;;; if you are helm user
;;(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;;;; if you are ivy user
;;;;(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
;;;;(use-package lsp-treemacs :commands lsp-treemacs-errors-list)
;;
;;;; optionally if you want to use debugger
;;;;(use-package dap-mode)
;;;; (use-package dap-LANGUAGE) to load the dap adapter for your language
;;
;;;; optional if you want which-key integration
;;(use-package which-key
;;  :config
;;  (which-key-mode))
;;
;;(setq lsp-completion-provider :capf)
;;(setq lsp-idle-delay 0.500)
;;
