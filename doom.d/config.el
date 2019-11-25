;;; .doom.d/config.el -*- lexical-binding: t; -*-

;; Place your private configuration here

(setq company-idle-delay 0
      company-show-numbers t)

(def-package! company-tabnine :init (add-to-list 'company-backends 'company-tabnine))
