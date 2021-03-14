(prelude-require-packages '
 (use-package
   solarized-theme
   p4
   rg
   ))

;; load p4 package
(require 'p4)

;; load rg package
(require 'rg)
(rg-enable-default-bindings)
