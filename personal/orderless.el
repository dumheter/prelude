(prelude-require-packages '(orderless))

(require 'orderless)
(setq completion-styles '(orderless))
(setq orderless-skip-highlighting (lambda () selectrum-is-active))
;; maybe use that instead, hinting at it might be more efficient? https://github.com/oantolin/orderless
;; (setq selectrum-refine-candidates-function #'orderless-filter)
(setq selectrum-highlight-candidates-function #'orderless-highlight-matches)
