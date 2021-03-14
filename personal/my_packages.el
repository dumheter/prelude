(prelude-require-packages '(solarized-theme p4 rg orderless marginalia))

;; load p4 package
(require 'p4)

;; load rg package
(require 'rg)
(rg-enable-default-bindings)

(require 'orderless)
(setq completion-styles '(orderless))
(setq orderless-skip-highlighting (lambda () selectrum-is-active))
(setq selectrum-highlight-candidates-function #'orderless-highlight-matches)
