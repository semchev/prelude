;; Global TS config
(require 'prettier-js)

;; TSX Config
(add-to-list 'auto-mode-alist '("\\.tsx\\'" . web-mode))
(add-hook 'web-mode-hook
          (lambda ()
            (tide-mode 1)
            (prettier-js-mode)
            (setq web-mode-markup-indent-offset 2)
            (setq web-mode-code-indent-offset 2)))

;; TS Config
(add-hook 'typescript-mode-hook
          (lambda ()
            (tide-mode 1)
            (prettier-js-mode)
            (setq typescript-indent-level 2)))
