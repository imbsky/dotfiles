(setq doom-font (font-spec :family "Fira Code" :size 14))

(setq org-directory "~/src"
      org-ellipsis " ▼ "
      org-bullets-bullet-list '("#"))
(after! org
  (add-to-list 'org-modules 'org-habit t))

(setq company-idle-delay 0
      company-show-numbers t)

(def-package! company-tabnine :init (add-to-list 'company-backends 'company-tabnine))
