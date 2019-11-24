(setq company-idle-delay 0
      company-show-numbers t)

(def-package! company-tabnine :init (add-to-list 'company-backends 'company-tabnine))
