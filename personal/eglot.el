(prelude-require-package 'eglot)

;; eglot
(use-package eglot :ensure t)
(add-to-list 'eglot-server-programs '((c++-mode c-mode) . ("clangd"
                                                           "--background-index"
                                                           "-j=6"
                                                           "--pch-storage=memory")))
(add-hook 'c++-mode-hook 'eglot-ensure)
(add-hook 'c-mode-hook 'eglot-ensure)

(defun my-projectile-project-find-function (dir)
  (let ((root (projectile-project-root dir)))
    (and root (cons 'transient root))))

(projectile-mode t)

(with-eval-after-load 'project
  (add-to-list 'project-find-functions 'my-projectile-project-find-function))
