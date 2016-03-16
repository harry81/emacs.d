(require-package 'projectile)
(require-package 'grizzl)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-completion-system 'grizzl)
(helm-projectile-on)

(provide 'init-projectile)
