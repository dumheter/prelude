(prelude-require-packages '
 (mwim
  use-package
  multiple-cursors
  ace-jump-mode
  yasnippet
  ;;aggressive-indent
  dumb-jump
  google-c-style
  lsp-mode
  lsp-ui
  company-lsp
  ccls
  solarized-theme
  rust-mode
  flycheck-rust
  ))

;;mwim
(global-set-key (kbd "C-a") 'mwim-beginning-of-code-or-line)
(global-set-key (kbd "C-e") 'mwim-end-of-code-or-line)
(global-set-key (kbd "<home>") 'mwim-beginning-of-line-or-code)
(global-set-key (kbd "<end>") 'mwim-end-of-line-or-code)

;;multiple-cursors
;;(global-set-key (kbd "C-S-c C-S-c") 'mc/edit-lines)
(global-set-key (kbd "C-<") 'mc/mark-next-like-this)
;;(global-set-key (kbd "C->") 'mc/mark-previous-like-this)
(global-set-key (kbd "C-c C-<") 'mc/mark-all-like-this)

;;ace-jump-mode
(autoload
  'ace-jump-mode
  "ace-jump-mode"
  "Emacs quick move minor mode"
  t)
(define-key global-map (kbd "C-c SPC") 'ace-jump-mode)

;;aggressive-indent-mode
;;(global-aggressive-indent-mode 1)

;; yas
(yas-global-mode 1)

;;
(global-set-key (kbd "M-o") 'other-window)

;; dumb jump mode
(dumb-jump-mode)

;; https://www.reddit.com/r/emacs/comments/audffp/tip_how_to_use_a_stable_and_fast_environment_to/
(use-package lsp-mode
             :hook (prog-mode . lsp))

(use-package ccls
             :after projectile
             :custom
             (ccls-args nil)
             (ccls-executable (executable-find "ccls"))
             (projectile-project-root-files-top-down-recurring
              (append '("compile_commands.json" ".ccls")
                      projectile-project-root-files-top-down-recurring))
             :config (push ".ccls-cache" projectile-globally-ignored-directories))
