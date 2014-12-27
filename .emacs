(custom-set-variables
  ;; custom-set-variables was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 '(cua-mode t nil (cua-base))
 '(inhibit-startup-screen t)
 '(save-place t nil (saveplace))
 '(show-paren-mode t)
 '(text-mode-hook (quote (turn-on-auto-fill text-mode-hook-identify)))
 '(uniquify-buffer-name-style (quote forward) nil (uniquify)))
(custom-set-faces
  ;; custom-set-faces was added by Custom.
  ;; If you edit it by hand, you could mess it up, so be careful.
  ;; Your init file should contain only one such instance.
  ;; If there is more than one, they won't work right.
 )

 (setq inhibit-startup-message   t)   ; Don't want any startup message
;;(setq make-backup-files         nil) ; Don't want any backup files
(setq auto-save-list-file-name  nil) ; Don't want any .saves files
;;(setq auto-save-default         nil) ; Don't want any auto saving

(setq search-highlight           t) ; Highlight search object
(setq query-replace-highlight    t) ; Highlight query object
(setq mouse-sel-retain-highlight t) ; Keep mouse high-lightening

(set-face-background 'region "yellow") ; Set region background color
(set-background-color        "wheat2") ; Set emacs bg color 




;; To go to a specific line can be useful, especially when Emacs is
;; used for programming. This common function can be bound to Ctrl-L
;; by:
(global-set-key "\C-l" 'goto-line) ; [Ctrl]-[L] 


;; now all about skeleton
(require 'skeleton)
  (define-skeleton hello-world-skeleton
      "Write a greeting"
      "Type name of user: "
      "hello, " str "!")

  (define-skeleton sql-table-comment
      "Write a table comment"
      "Type name of table: "
      "COMMENT ON TABLE " str " IS '"
       ("ENTER comment: " str )
       "';" 
      \n >
  )

  (define-skeleton sql-column-comment
      "Write a table comment"
      "Type name of table: "
      "COMMENT ON COLUMN " str 
      "."
      (skeleton-read "Column name : " ) 
      " IS '"
      (skeleton-read "Comment: " )
       "';" 
      \n >
  )


;;; example fo reading sevearl vars
  (define-skeleton read-two-vars
      "Prompt the user for two variables, and use them in a skeleton."
      ""
      > "variable A is " (setq v1 (skeleton-read "Variable A? ")) \n
      > "variable B is " (setq v2 (skeleton-read "Variable B? ")) \n
      > "A: " v1 "    B: " v2 \n
      variable A is avl
      variable B is bvl
      A: avl    B: bvl

      )