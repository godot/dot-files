;; HELM modes
(helm-mode 1)
(require 'helm-projectile)
(projectile-global-mode)
(setq projectile-switch-project-action 'helm-projectile)

;; CREATE-SCRATCH-BUFFER

(defun create-scratch-buffer nil
  "create a scratch buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode))

;; RANDOM SHORTCUTS
(add-hook 'before-save-hook 'delete-trailing-whitespace)
(fset 'yes-or-no-p 'y-or-n-p)

;; higlight line
(hl-line-mode)
