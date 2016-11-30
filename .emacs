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

(custom-set-variables
 ;; custom-set-variables was added by Custom.
 ;; If you edit it by hand, you could mess it up, so be careful.
 ;; Your init file should contain only one such instance.
 ;; If there is more than one, they won't work right.
 '(custom-enabled-themes (quote (sanityinc-solarized-light)))
 '(custom-safe-themes
   (quote
    ("4cf3221feff536e2b3385209e9b9dc4c2e0818a69a1cdb4b522756bcdf4e00a4" "d677ef584c6dfc0697901a44b885cc18e206f05114c8a3b7fde674fce6180879" default)))
 '(org-agenda-files (quote ("~/projects/nearme/desksnearme/notes.org")))
 '(package-selected-packages
   (quote
    (color-theme-sanityinc-solarized color-theme-sanityinc-tomorrow color-theme-solarized ruby-test-mode ruby-refactor rubocop restclient-test restclient-helm helm-swoop helm-projectile helm-package helm-git helm-ag fringe-helper flycheck expand-region evil-surround evil-space evil-org evil-multiedit evil-magit evil-iedit-state evil-escape enh-ruby-mode better-defaults ag ace-jump-mode ace-jump-helm-line ace-jump-buffer)))
 '(show-paren-mode t)
 '(tool-bar-mode nil))
(custom-set-faces
 '(default (
            (t
             (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Hack"))))
 )

;; (custom-set-faces
;;  '(default (
;;             (t
;;              (:inherit nil :stipple nil :background "White" :foreground "Black" :inverse-video nil :box nil :strike-through nil :overline nil :underline nil :slant normal :weight normal :height 130 :width normal :family "Hack"))))
;;  )
