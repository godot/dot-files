(require 'rubocop)
(add-hook 'ruby-mode-hook #'rubocop-mode)
(add-hook 'ruby-mode-hook #'flycheck-mode)
