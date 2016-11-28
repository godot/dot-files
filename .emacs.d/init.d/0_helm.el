(require 'helm-config)
(require 'helm)

(define-key helm-map (kbd "C-j") 'helm-next-line)
(define-key helm-map (kbd "C-k") 'helm-previous-line)

(define-key helm-map (kbd "[?/t]") 'helm-execute-persistent-action)
(define-key helm-map (kbd "[?/t]") 'helm-find-files-up-one-level)
