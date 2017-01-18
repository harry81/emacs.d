(require-package 'projectile)
(require-package 'grizzl)

(projectile-global-mode)
(setq projectile-completion-system 'helm)
(setq projectile-completion-system 'grizzl)
(helm-projectile-on)
(setq projectile-tags-command "ctags-exuberant -Re -f \"%s\" %s")

(setq projectile-tags-command "ctags-exuberant -Re -f \"%s\" %s")
(when (maybe-require-package 'projectile)
  (add-hook 'after-init-hook 'projectile-global-mode)

  ;; The following code means you get a menu if you hit "C-c p" and wait
  (after-load 'guide-key
    (add-to-list 'guide-key/guide-key-sequence "C-c p"))

  ;; Shorter modeline
  (after-load 'projectile
    (setq-default
     projectile-mode-line
     '(:eval
       (if (file-remote-p default-directory)
           " Pr"
         (format " Pr[%s]" (projectile-project-name)))))))


(provide 'init-projectile)
