;;; package --- Summary:
;;; Commentary:

;;; Code:
(require-package 'virtualenvwrapper)
(require 'virtualenvwrapper)
(venv-initialize-interactive-shells)
(venv-initialize-eshell)
(setq venv-location "/Users/hyunminchoi/.virtualenvs/")
(pyvenv-workon "anything")
(provide 'init-venv)
;;; init-venv.el ends here
