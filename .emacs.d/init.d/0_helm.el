(require 'helm-config)
(require 'helm)

(define-key helm-map (kbd "C-j") 'helm-next-line)
(define-key helm-map (kbd "C-k") 'helm-previous-line)

(define-key helm-map (kbd "C-;") 'helm-execute-persistent-action)
(define-key helm-map (kbd "C-h") 'helm-execute-persistent-action)
