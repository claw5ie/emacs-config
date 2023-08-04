(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

(put 'dired-find-alternate-file 'disabled nil)

;; Set default font
;; Font test: ~!@#$%^&*()_+-=[]'\,./{}"|<>?1234567890oOlLiI
;; -------------------------------------------------------
(set-face-attribute 'default 'nil :height 145 :family "Apl385 Unicode")

;; Start emacs in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq-default
 default-tab-width 2     ;; Set tab width
 tab-width 2             ;; Another Tab width
 c-basic-offset 2        ;; Tabs width one more time, I guess
 python-indent-offset 2  ;; Python tabs width...
 rust-indent-offset 2    ;; Set rust indentation... again
 indent-tabs-mode nil    ;; Convert tabs to spaces
 c-default-style "GNU"   ;; Set C indentation style
 cursor-type 'box        ;; Set cursor type
 word-wrap t             ;; Wrap by words at the end of the line
 ido-auto-merge-work-directories-length -1) ;; Disable automatic file search for ido mode

(setq
 backup-directory-alist '(("." . "~/.emacs.d/backups")) ;; Set backup directory (files ending with ~)
 backup-by-copying t        ;; Don't delink hardlinks
 version-control t          ;; Use version numbers on backups
 delete-old-versions t      ;; Automatically delete excess backups
 kept-new-versions 20       ;; How many of the newest versions to keep
 kept-old-versions 5        ;; and how many of the old
 delete-old-versions t      ;; Delete old versions of copies
 inhibit-startup-message t  ;; Close startup buffer
 line-number-mode t         ;; Display line number
 column-number-mode t       ;; Display column number
 ring-bell-function 'ignore ;; Disable annoying bell sound
 dired-listing-switches "-al --group-directories-first") ;; Set ls options for dired to sort first by folders

(menu-bar-mode 0)           ;; Remove menu bar
(tool-bar-mode 0)           ;; Remove toolbar
(toggle-scroll-bar 0)       ;; Remove scroll bar
(global-auto-revert-mode t) ;; Update file if modified outside emacs
(delete-selection-mode t)   ;; Enable replacing region with typed text
(show-paren-mode t)         ;; Highlight matching parenthesis
(ido-mode t)                ;; Enable ido mode

;; Change the style of C comments from "/*" to "//".
(add-hook 'c-mode-hook (lambda () (c-toggle-comment-style)))
(add-hook 'asm-mode-hook (lambda () (nasm-mode)))

;; Custom keybindings
(global-set-key (kbd "C-c j") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c i") 'windmove-up)
(global-set-key (kbd "C-c k") 'windmove-down)

(set-face-bold-p 'bold nil) ;; Don't use bold font. If the selected font doesn't have bold variant, some visual glitches will appear on text that uses (non-existing) bold variant of font.
