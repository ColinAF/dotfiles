(setq inhibit-startup-message t)

(global-display-line-numbers-mode) ; Add line numbers 

;; Tried to stop buffers from openeing as splits
(setq split-height-threshold nil)
(setq split-width-threshold 0)

(scroll-bar-mode -1)        ; Disable visible scrollbar
;;(tool-bar-mode -1)        ; Disable the toolbar
;;(menu-bar-mode -1)        ; Disable the menu bar
(tooltip-mode -1)           ; Disable tooltips

(set-fringe-mode 10)        ; Add larger margins

(set-face-attribute 'default nil :font "Fira Code Retina" :height 125)

(setq visible-bell t) ;; Stop annoying beep

(load-theme 'wombat)

