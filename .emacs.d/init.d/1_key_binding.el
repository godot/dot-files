(require 'evil-leader)

(evil-leader/set-leader "<SPC>")
(global-evil-leader-mode)

(evil-leader/set-key "<SPC>" 'helm-M-x)

(evil-leader/set-key "v v" 'er/expand-region)
(evil-leader/set-key "e e" 'eval-last-sexp)
(evil-leader/set-key "; ;" 'comment-line)

;; RUBY
(evil-leader/set-key "r r m" 'ruby-refactor-extract-to-method)
(evil-leader/set-key "r r v" 'ruby-refactor-extract-local-variable)

;; ORG

(evil-leader/set-key "o a" 'org-agenda)
(evil-leader/set-key "o c" 'org-capture)
(evil-leader/set-key "o s" 'org-calendar-goto-agenda)

;; FILES
(evil-leader/set-key "f s" 'save-buffer)
(evil-leader/set-key "f r" 'helm-recentf)
(evil-leader/set-key "f f" 'helm-find-files)

;; PROJECTILE
(evil-leader/set-key "p f" 'helm-projectile-find-file)
(evil-leader/set-key "p r" 'helm-projectile-recentf)
(evil-leader/set-key "p p" 'helm-projectile-switch-project)
(evil-leader/set-key "p b" 'helm-buffers-run-browse-project)
(evil-leader/set-key "p v" 'magit-status)

;; GIT
(evil-leader/set-key "g s" 'magit-status)
(evil-leader/set-key "g S" 'magit-stage-file)

;; BUFFERS
(evil-leader/set-key "TAB" 'mode-line-other-buffer)
(evil-leader/set-key "b b" 'helm-buffers-list)
(evil-leader/set-key "b d" 'kill-this-buffer)
(evil-leader/set-key "b s" 'create-scratch-buffer)
(evil-leader/set-key "]" 'evil-next-buffer)
(evil-leader/set-key "[" 'evil-prev-buffer)

;; EXIT
(evil-leader/set-key "q q" 'save-buffers-kill-emacs)

;; SEARCH & EDIT
(evil-leader/set-key "s s" 'helm-occur)
(evil-leader/set-key "s S" 'helm-swoop-symble-pre-input)
(evil-leader/set-key "s q" 'helm-occur-from-isearch)
(evil-leader/set-key "s e" 'iedit-mode)

(evil-leader/set-key "s p" 'helm-projectile-ag)

;; WINDOW
(evil-leader/set-key "w m" 'delete-other-windows)
(evil-leader/set-key "w 2" 'evil-window-vsplit)
(evil-leader/set-key "w 3" 'evil-window-split)
(evil-leader/set-key "w p" 'evil-window-next)
(evil-leader/set-key "w n" 'evil-window-prev)
(evil-leader/set-key "w 1" 'delete-other-windows)
(evil-leader/set-key "1" 'evil-window-top-left)
(evil-leader/set-key "2" 'evil-window-right)
(evil-leader/set-key "3" 'evil-window-bottom)

;; ACE JUMP
(evil-leader/set-key "j" 'ace-jump-word-mode)

;; HELP
(evil-leader/set-key "h k" 'describe-key)
(evil-leader/set-key "h c" 'describe-key-briefly)
