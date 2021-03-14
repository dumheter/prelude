;;keybinds

;; ***************************
;; Override prelude defaults
;; ***************************
(global-set-key (kbd "C-<backspace>") 'backward-kill-word)
(global-set-key (kbd "M-o") 'other-window)
(global-set-key (kbd "M-n") 'forward-paragraph)
(global-set-key (kbd "M-p") 'backward-paragraph)


;; ***************************
;; Fix custom '{}' keybinds
;; ***************************
(global-set-key (kbd "ª") '"{")
(global-set-key (kbd "ß") '"}")
(global-set-key (kbd "ð") '"[")
(global-set-key (kbd "đ") '"]")
;;(global-set-key (kbd "ŋ") '"(")
;;(global-set-key (kbd "ħ") '")")


;;
;;(global-set-key (kbd "M-o") 'other-window)


;; company
;;(setq company-idle-delay '0.5)
(global-set-key (kbd "C-c c") 'company-complete)
