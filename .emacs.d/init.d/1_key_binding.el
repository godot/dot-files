(require 'evil-leader)

(evil-leader/set-leader "<SPC>")
(global-evil-leader-mode)

(evil-leader/set-key "<SPC>" 'helm-M-x)

(evil-leader/set-key "f s" 'save-buffer)
(evil-leader/set-key "f r" 'helm-recentf)
(evil-leader/set-key "f f" 'helm-find-files)

(evil-leader/set-key "p f" 'helm-projectile-find-file)
(evil-leader/set-key "p p" 'helm-projectile-switch-project)
(evil-leader/set-key "p b" 'helm-buffers-run-browse-project)
(evil-leader/set-key "p v" 'magit-status)

(evil-leader/set-key "TAB" 'evil-prev-buffer)

(evil-leader/set-key "b b" 'helm-buffers-list)
(evil-leader/set-key "b d" 'kill-buffer)

(evil-leader/set-key "q q" 'kill-emacs)

(evil-leader/set-key "s s" 'helm-occur)
(evil-leader/set-key "s q" 'helm-occur-from-isearch)

(evil-leader/set-key "v v" 'er/expand-region)
