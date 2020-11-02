(prelude-require-packages '
 (use-package
  ;;ccls
  solarized-theme
  ;;rust-mode
  ;;flycheck-rust
  p4
  rg
  ))



;; https://www.reddit.com/r/emacs/comments/audffp/tip_how_to_use_a_stable_and_fast_environment_to/

;;(use-package ccls
;;             :after projectile
;;             :custom
;;             (ccls-args nil)
;;             (ccls-executable (executable-find "ccls"))
;;             (projectile-project-root-files-top-down-recurring
;;              (append '("compile_commands.json" ".ccls")
;;                      projectile-project-root-files-top-down-recurring))
;;             :config (push ".ccls-cache" projectile-globally-ignored-directories))


;; load p4 package
(require 'p4)

;; load rg package
(require 'rg)
(rg-enable-default-bindings)
