;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; prelude settings
;;dissable keyboard arrow warnings
(setq prelude-guru nil)

(setq prelude-minimalistic-ui t)
(setq prelude-clean-whitespace-on-save nil)
(setq prelude-format-on-save nil)
(setq prelude-theme 'solarized-light)

(scroll-bar-mode -1)

;; does prelude do this automagically?
;; out-of-emacs clipboard gets into the kill ring
;; (setq save-interprogram-paste-before-kill t)

;; UTF-8 please
(setq locale-coding-system 'utf-8) ; pretty
(set-terminal-coding-system 'utf-8) ; pretty
(set-keyboard-coding-system 'utf-8) ; pretty
(set-selection-coding-system 'utf-8) ; please
(prefer-coding-system 'utf-8) ; with sugar on top

;; no more ~ files
(setq backup-inhibited t)
(setq auto-save-default nil)
(setq make-backup-files nil)
