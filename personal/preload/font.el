;; If on windows, set font
;; Get the font from https://github.com/microsoft/cascadia-code/releases
(cond
 ((string-equal system-type "windows-nt")
  (progn
    (add-to-list 'default-frame-alist '(font . "Cascadia Mono PL"))
    (set-face-attribute 'default t
		        :font "Cascadia Mono PL"
		        :height 90))))

(cond
 ((string-equal system-type "gnu/linux")
  (progn
    (set-face-attribute 'default nil :height 100))))
