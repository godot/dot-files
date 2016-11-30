(require 'evil)
(require 'evil-magit)
(require 'evil-org)

(defvar godot/evil-emacs-state-modes)
(setq godot/evil-emacs-state-modes '(package-menu-mode))

(setq evil-emacs-state-modes (delete 'package-menu-mode evil-emacs-state-modes))
(describe-variable 'evil-emacs-state-modes)

(setq evil-normal-state-modes (append
                               godot/evil-emacs-state-modes
                               evil-motion-state-modes))
(setq evil-motion-state-modes nil)

(evil-mode 1)

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
