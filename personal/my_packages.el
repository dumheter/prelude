(prelude-require-packages '
 (mwim
  multiple-cursors
  ace-jump-mode
  yasnippet
  ;;aggressive-indent
  ;;neotree
  ;;all-the-icons
  ;;csharp-mode
  ;;spaceline
  ;;spaceline-all-the-icons
  dumb-jump
  google-c-style
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

;;neotree & all-the-icons
;;(global-set-key [f8] 'neotree-toggle)
;;(setq neo-smart-open t)
;;(setq neo-theme (if (display-graphic-p) 'icons 'arrow))
;; IMPORTANT
;; In order to see the icons the fonts need to be installed.
;; run M-x all-the-icons-install-fonts.
;; see https://github.com/domtronn/all-the-icons.el#installing-fonts
;; for more info

;;spaceline
;;(spaceline-all-the-icons-theme)
;;(spaceline-all-the-icons--setup-neotree)

;; yas
(yas-global-mode 1)

;;
(global-set-key (kbd "M-o") 'other-window)

;; dumb jump mode
(dumb-jump-mode)
