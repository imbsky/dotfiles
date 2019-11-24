(doom! :input
       :completion
       company
       ;;helm
       ;;ido
       ivy

       :ui
       ;;deft
       doom
       doom-dashboard
       doom-quit
       ;;fill-column
       hl-todo
       hydra
       ;;indent-guides
       modeline
       nav-flash
       ;;neotree
       ophints
       (popup
        +all
        +defaults)
       ;;pretty-code
       tabs
       treemacs
       unicode
       vc-gutter
       vi-tilde-fringe
       window-select
       workspaces

       :editor
       (evil +everywhere)
       file-templates
       fold
       (format +onsave)
       ;;god
       ;;lispy
       multiple-cursors
       ;;objed
       ;;parinfer
       rotate-text
       snippets
       ;;word-wrap

       :emacs
       dired
       electric
       ibuffer
       vc

       :term
       ;;eshell
       ;;shell
       ;;term
       ;;vterm

       :tools
       ;;ansible
       ;;debugger
       ;;direnv
       ;;docker
       editorconfig
       ;;ein
       (eval +overlay)
       flycheck
       ;;flyspell
       ;;gist
       (lookup
        +docsets)
       lsp
       macos
       magit
       ;;make
       ;;pass
       ;;pdf
       ;;prodigy
       ;;rgb
       ;;terraform
       ;;tmux
       ;;upload
       ;;wakatime

       :lang
       ;;agda
       assembly
       ( cc +lsp)
       clojure
       common-lisp
       coq
       crystal
       csharp
       data
       ( elixir +lsp)
       (elm +lsp)
       emacs-lisp
       erlang
       ;;ess
       ;;faust
       fsharp
       ( go +lsp)
       (haskell +intero)
       ;;hy
       ;;idris
       ;;(java +meghanada)
       javascript
       ;;julia
       ;;kotlin
       ;;latex
       ;;lean
       ;;ledger
       lua
       markdown
       ;;nim
       nix
       ( ocaml  +lsp)
       (org
        +dragndrop
        ;;+hugo
        +ipython
        +pandoc
        ;;+pomodoro
        +present)
       ;;perl
       ;;php
       ;;plantuml
       ;;purescript
       python
       ;;qt
       ;;racket
       ;;rest
       ;;rst
       ( python  +lsp)
       ( ruby +lsp)
       ( scala +lsp)
       scheme
       ( sh +fish +lsp)
       ;;solidity
       ( swift +lsp)
       ;;terra
       ( web  +lsp)

       :email
       ;;(mu4e +gmail)
       ;;notmuch
       ;;(wanderlust +gmail)

       :app
       ;;calendar
       ;;irc
       ;;(rss +org)
       ;;twitter
       ;;write

       :config
       ;;literate
       (default +bindings +smartparens))
