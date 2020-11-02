(prelude-require-package 'yasnippet)

(require 'yasnippet)

;; check http://joaotavora.github.io/yasnippet
;; for more info
(setq yas-snippet-dirs
      '("~/.emacs.d/personal/yasnippet" ;; you can add more dirs
        ))
(yas/initialize)

;; yas
(yas-global-mode 1)
