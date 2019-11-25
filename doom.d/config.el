;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq company-idle-delay 0
      company-show-numbers t)

(setq treemacs-follow-mode t
      treemacs-filewatch-mode t
      treemacs-fringe-indicator-mode t)

(eval-after-load 'web-mode
  '(progn
       (add-hook 'web-mode-hook 'add-node-modules-path)
       (add-hook 'web-mode-hook 'prettier-js-mode)))

(def-package! company-tabnine :init (add-to-list 'company-backends 'company-tabnine))
