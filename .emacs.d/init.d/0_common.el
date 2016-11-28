(require 'evil)
(evil-mode 1)
(require 'evil-magit)
(require 'evil-org)

(require 'helm-projectile)
(projectile-global-mode)

(defun create-scratch-buffer nil
  "create a scratch buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode))
