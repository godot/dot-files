;; Added by Package.el.  This must come before configurations of
;; installed packages.  Don't delete this line.  If you don't want it,
;; just comment it out by adding a semicolon to the start of the line.
;; You may delete these explanatory comments.
(package-initialize)

(setq package-archives '(("gnu" . "https://elpa.gnu.org/packages/")
                         ("melpa" . "https://melpa.org/packages/")))

(defun load-directory (dir)
      (let ((load-it (lambda (f)
		       (load-file (concat (file-name-as-directory dir) f)))
		     ))
	(mapc load-it (directory-files dir nil "\\.el$"))))

(load-directory "~/.emacs.d/init.d")

(add-hook 'before-save-hook 'delete-trailing-whitespace)

(set-default-font "Hack-13")

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(org-agenda-files (quote ("~/projects/nearme/desksnearme/notes.org")))
 '(package-selected-packages
   (quote
    (evil-org ace-jump-buffer ace-jump-helm-line ace-jump-mode restclient-test restclient restclient-helm flycheck rubocop enh-ruby-mode expand-region better-defaults ag evil-multiedit evil-surround helm helm-ag helm-git helm-package helm-projectile helm-swoop evil-leader evil evil-escape evil-iedit-state evil-magit evil-space)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 ;; custom-set-faces was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 )
