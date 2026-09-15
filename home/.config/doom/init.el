(doom! :completion
       (corfu +orderless)  ; complete with cap(f), cape and a flying feather!
       vertico             ; the search engine of the future

       :ui
       doom                ; what makes DOOM look the way it does
       dashboard           ; a nifty splash screen for Emacs
       hl-todo             ; highlight TODO/FIXME/NOTE/DEPRECATED/HACK/REVIEW
       indent-guides       ; highlighted indent columns
       modeline            ; snazzy, Atom-inspired modeline, plus API
       ophints             ; highlight the region an operation acts on
       (popup +defaults)   ; tame sudden yet inevitable temporary windows
       tabs                ; a tab bar for Emacs
       treemacs            ; a project drawer, like neotree but cooler
       (vc-gutter +pretty) ; vcs diff in the fringe
       vi-tilde-fringe     ; fringe tildes to mark beyond EOB
       workspaces          ; tab emulation, persistence & separate workspaces

       :editor
       (evil +everywhere)  ; come to the dark side, we have cookies
       file-templates      ; auto-snippets for empty files
       fold                ; (nigh) universal code folding
       multiple-cursors    ; editing in many places at once
       snippets            ; my elves. They type so I don't have to
       (whitespace +guess +trim)  ; a butler for your whitespace

       :emacs
       dired               ; making dired pretty [functional]
       electric            ; smarter, keyword-based electric-indent
       tramp               ; remote files at your arthritic fingertips
       undo                ; persistent, smarter undo for your inevitable mistakes
       vc                  ; version-control and Emacs, sitting in a tree

       :term
       vterm               ; almost the best terminal emulation in Emacs

       :checkers
       syntax              ; tasing you for every semicolon you forget

       :tools
       docker
       (eval +overlay)     ; run code, run (also, repls)
       lookup              ; navigate your code and its documentation
       (lsp +eglot)        ; M-x vscode
       magit               ; a git porcelain for Emacs
       make                ; run make tasks from Emacs

       :lang
       (cc +lsp)           ; C > C++ == 1
       emacs-lisp          ; drown in parentheses
       (go +lsp)           ; the hipster dialect
       (haskell +lsp)      ; a language that's lazier than I am
       (json +lsp)         ; At least it ain't XML
       (java +lsp)         ; the poster child for carpal tunnel syndrome
       (javascript +lsp)   ; all(hope(abandon(ye(who(enter(here))))))
       (kotlin +lsp)       ; a better, slicker Java(Script)
       (latex +lsp)        ; writing papers in Emacs has never been so fun
       (lua +lsp)          ; one-based indices? one-based indices
       (markdown +lsp)     ; writing docs for people to ignore
       org                 ; organize your plain life in plain text
       (python +lsp)       ; beautiful is better than ugly
       (rust +lsp)         ; Fe2O3.unwrap().unwrap().unwrap().unwrap()
       (sh +lsp)           ; she sells {ba,z,fi}sh shells on the C xor
       (web +lsp)          ; the tubes
       (yaml +lsp)         ; JSON, but readable
       (zig +lsp)          ; C, but simpler

       :config
       (default +bindings +smartparens))
