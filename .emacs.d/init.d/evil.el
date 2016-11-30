(require 'evil)
(require 'evil-magit)
(require 'evil-org)

(evil-mode 1)

;; evil in the package list buffer
(setq godot/evil-emacs-state-modes '(package-menu-mode))
(setq evil-emacs-state-modes (delete 'package-menu-mode evil-emacs-state-modes))

(setq evil-normal-state-modes (append
                               godot/evil-emacs-state-modes
                               evil-motion-state-modes))
(setq evil-motion-state-modes nil)
