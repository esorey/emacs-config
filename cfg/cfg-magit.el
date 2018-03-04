;; TODO, replicate from my old setup

;; these were in evil-magit.el, for magit-mode-map 
;; a lot of them I don't have in muscle-memory
;;   so I guess I never put them into practice, and might as well start over and reconsider it all

;; ,,gc magit-git-command
;; ,,c magit-commit
;; ,,ac magit-commit-amend
;; ,,f magit-fetch-all
;; ,,F magit-pull
;; ,,ps magit-push-current-to-upstream
;; ,,t magit-tag
;; ,,l magit-log
;; ,,,s magit-stash

;; these conflict with built-in magit ones that I might like to use, skipping between chunks and sections (with shift)
;; that means choosing another binding for expand/contract
      ;; (define-key map (kbd "[") 'magit-diff-less-context)
      ;; (define-key map (kbd "]") 'magit-diff-more-context)


;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Git
;; lots of TODOs for me here
;; in my legacy emacs config I had butchered magit in order to have reasonable keybindings for my vim-muscle-memory
;; now the community has done that for me (see evil-magit below)
;; I still do not use ~80% of what magit provides, and I want to learn
(use-package magit) ;; TODO move me


(use-package evil-magit
  :bind (:map magit-status-mode-map
              ;; TODO consider making better choices about magit bindings
              ;; push & pull from upstream should be matching pairs perhaps, s-] ... which are normally push&pop
              (",,ps" . magit-push-current-to-upstream)
              (",,F" . magit-pull-from-upstream)
              ;; TODO shrink/grow chunks ...  magit-diff-less-context (and more context)
              :map git-commit-mode-map
              ("<C-return>" . with-editor-finish)
              ("<C-backspace>" . with-editor-cancel))
  :config
  (progn
    ))