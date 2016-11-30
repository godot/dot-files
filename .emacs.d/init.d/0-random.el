;; higlight line
(hl-line-mode)

;; HELM modes
(helm-mode 1)
(require 'helm-projectile)
(projectile-global-mode)

(defun create-scratch-buffer nil
  "create a scratch buffer"
  (interactive)
  (switch-to-buffer (get-buffer-create "*scratch*"))
  (lisp-interaction-mode))

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(fset 'yes-or-no-p 'y-or-n-p)
