;; If on windows, set font
(cond
 ((string-equal system-type "windows-nt")
  (progn
    (set-frame-font "Consolas"))))

(cond
 ((string-equal system-type "gnu/linux")
  (progn
    (set-face-attribute 'default nil :height 100))))
