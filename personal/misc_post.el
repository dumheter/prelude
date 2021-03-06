;; .h is c++
(add-to-list 'auto-mode-alist '("\\.h\\'" . c++-mode))

;; Arduiono's .ino code is c++
(add-to-list 'auto-mode-alist '("\\.ino\\'" . c++-mode))

;; ddf is c++
(add-to-list 'auto-mode-alist '("\\.ddf\\'" . c++-mode))

;; Set coding to use utf-8, except on windows where it uses utf-16
;;(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
;;(set-language-environment 'utf-8)
;;(set-keyboard-coding-system 'utf-8-mac) ; For old Carbon emacs on OS X only
;;(setq locale-coding-system 'utf-8)
;;(set-default-coding-systems 'utf-8)
;;(set-terminal-coding-system 'utf-8)
;;(if (eq system-type 'windows-nt)             ;; if
;;    (set-selection-coding-system 'utf-16-le) ;; then
;;  (set-selection-coding-system 'utf-8))      ;; else
;;(prefer-coding-system 'utf-8)

;; set flycheck c++ version
(add-hook 'c++-mode-hook
          (lambda () (setq flycheck-clang-language-standard "c++17")))

;; rust stuff
(with-eval-after-load 'rust-mode
  (add-hook 'flycheck-mode-hook #'flycheck-rust-setup))

;; json mode 2 spaces for a tab
(add-hook 'json-mode-hook
          (lambda ()
            (make-local-variable 'js-indent-level)
            (setq js-indent-level 2)))


;; to tweak performance
;; https://emacs-lsp.github.io/lsp-mode/page/performance/
;;(setq gc-cons-threshold 100000000)
(setq gc-cons-threshold 10000000)
(setq read-process-output-max (* 1024 1024))


;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;; Code style c/c++   ;;;

;;(prelude-require-package 'google-c-style)

;; namespace don't indent
;;(c-set-offset 'innamespace 0)

;; Google c style
;;(add-hook 'c-mode-common-hook 'google-set-c-style)
;;(add-hook 'c-mode-common-hook 'google-make-newline-indent)
;;(add-hook 'c-mode-hook 'google-set-c-style)
;;(add-hook 'c-mode-hook 'google-make-newline-indent)
;;(add-hook 'c++-mode-hook 'google-set-c-style)
;;(add-hook 'c++-mode-hook 'google-make-newline-indent)

;; Dumheter c style
;; You got an error, could not find dumheter-c-style? Its in .emacs.d/custom_packages/dumheter-c-mode.el
;; Install it with pacakge-install-from-buffer
(add-hook 'c-mode-common-hook 'dumheter-set-c-style)
(add-hook 'c-mode-common-hook 'dumheter-make-newline-indent)
;;(add-hook 'c-mode-hook 'dumheter-set-c-style)
;;(add-hook 'c-mode-hook 'dumheter-make-newline-indent)
;;(add-hook 'c++-mode-hook 'dumheter-set-c-style)
;;(add-hook 'c++-mode-hook 'dumheter-make-newline-indent)

;;tab is 2 spaces
;;(setq-default indent-tabs-mode nil)
;;(setq-default tab-width 2)
;;(setq indent-line-function 'insert-tab)
;;(custom-set-variables
;; '(c-basic-offset 2))

;;override google-c-style
;;(setq-default c-basic-offset 4
;;             tab-width 4
;;             indent-tabs-mode t)


;; Whitespace
;;(setq whitespace-line-column 200) ;; limit line length (80 normal)
(setq whitespace-style '(face empty trailing))
(setq prelude-clean-whitespace-on-save nil)

(defun dumheter-put-file-name-on-clipboard ()
  "Put the current file name on the clipboard"
  (interactive)
  (let ((filename (if (equal major-mode 'dired-mode)
                      default-directory
                    (buffer-file-name))))
    (when filename
      (with-temp-buffer
        (insert filename)
        (clipboard-kill-region (point-min) (point-max)))
      (message filename))))

;;; Projectile uses linux 'tr' command
(setq projectile-git-submodule-command nil)
(setq projectile-fossil-command nil)
(setq projectile-svn-command nil)

;; no more ~ files
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq make-backup-files nil)
