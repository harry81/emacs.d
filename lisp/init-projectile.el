(require-package 'projectile)
(require-package 'grizzl)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-completion-system 'grizzl)
(helm-projectile-on)

(setq projectile-tags-command "ctags-exuberant -Re -f \"%s\" %s")


(provide 'init-projectile)
