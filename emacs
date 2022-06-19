(package-initialize)

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))

;; Set default font
(set-face-attribute 'default nil :height 130 :font "Share Tech Mono")

(put 'dired-find-alternate-file 'disabled nil)

;; Start emacs in fullscreen
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(setq-default
 default-tab-width 2     ;; Set tab width
 tab-width 2             ;; Another Tab width
 c-basic-offset 2        ;; Tabs width one more time, I guess
 python-indent-offset 2  ;; Python tabs width...
 indent-tabs-mode nil    ;; Convert tabs to spaces
 c-default-style "linux" ;; Set C indentation style
 ;; display-fill-column-indicator-column 80 ;; Set column indicator to 80-th column
 cursor-type 'box        ;; Set cursor type
 word-wrap t             ;; Wrap by words at the end of the line
 ido-auto-merge-work-directories-length -1) ;; Disable automatic file search for ido mode

(setq
 backup-directory-alist '(("." . "~/.emacs.d/backups")) ;; Set backup directory (files ending with ~)
 backup-by-copying t   ;; Don't delink hardlinks
 version-control t     ;; Use version numbers on backups
 delete-old-versions t ;; Automatically delete excess backups
 kept-new-versions 20  ;; How many of the newest versions to keep
 kept-old-versions 5)  ;; and how many of the old

(setq
 delete-old-versions t      ;; Delete old versions of copies
 inhibit-startup-message t  ;; Close startup buffer
 line-number-mode t         ;; Display line number
 column-number-mode t       ;; Display column number
 ring-bell-function 'ignore ;; Disable annoying bell sound
 dired-listing-switches "-al --group-directories-first") ;; Set ls options for dired to sort first by folders

(menu-bar-mode 0)              ;; Remove menu bar
(tool-bar-mode 0)              ;; Remove toolbar
(toggle-scroll-bar 0)          ;; Remove scroll bar
(global-auto-revert-mode t)    ;; Update file if modified outside emacs
;; (global-hl-line-mode t)        ;; Hightlight current line
(set-face-foreground 'highlight nil) ;; Enable syntax highlighting on the current line (highlighted) line
(delete-selection-mode t)      ;; Enable replacing region with typed text
(global-linum-mode t)          ;; Show line number
(show-paren-mode t)            ;; Highlight matching parenthesis
(ido-mode t)                   ;; Enable ido mode
(c-set-offset 'inline-open '0) ;; Linux style indentation of functions inside a class
;; (global-subword-mode)          ;; Stop in-between the “camelCase” words

;; Display horizontal line at 80-th column number for different modes.
;; (add-hook 'c-mode-hook 'display-fill-column-indicator-mode)
;; (add-hook 'c++-mode-hook 'display-fill-column-indicator-mode)
;; (add-hook 'python-mode-hook 'display-fill-column-indicator-mode)
;; (add-hook 'java-mode-hook 'display-fill-column-indicator-mode)
;; (add-hook 'sql-mode-hook 'display-fill-column-indicator-mode)
;; (add-hook 'haskell-mode-hook 'display-fill-column-indicator-mode)
;; (add-hook 'tuareg-mode-hook 'display-fill-column-indicator-mode)
;; (add-hook 'glsl-mode-hook 'display-fill-column-indicator-mode)

;; Enable tuareg mode for files ending with ".ml" (ocaml source code extension)
(add-to-list 'auto-mode-alist '("\\.ml\\'" . tuareg-mode))

;; Custom keybindings
(global-set-key (kbd "C-c j") 'windmove-left)
(global-set-key (kbd "C-c l") 'windmove-right)
(global-set-key (kbd "C-c i") 'windmove-up)
(global-set-key (kbd "C-c k") 'windmove-down)
