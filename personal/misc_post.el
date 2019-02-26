;; Arduiono's .ino code is c++
(add-to-list 'auto-mode-alist '("\\.ino\\'" . c++-mode))

;;tab is 2 spaces
(setq-default indent-tabs-mode nil)
;;(setq-default tab-width 2)
;;(setq indent-line-function 'insert-tab)
;;(custom-set-variables
;; '(c-basic-offset 2))

;;dissable keyboard arrow warnings
(setq prelude-guru nil)

;;remove ?preluding? red tab markings.
;; (setq-default whitespace-toggle-options 't) NOT WORKING

;;flyspell
;;(setq ispell-extra-args '("--sug-mode=ultra" "--dict-dir=C:/msys64/usr/share/locale"))
;;(setq ispell-list-command "--list")
;;(setq ispell-dictionary "british")

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

;; namespace don't indent
(c-set-offset 'innamespace 0)

;; Google c style
(add-hook 'c-mode-common-hook 'google-set-c-style)
(add-hook 'c-mode-common-hook 'google-make-newline-indent)
(add-hook 'c++-mode-hook 'google-set-c-style)
(add-hook 'c++-mode-hook 'google-make-newline-indent)
