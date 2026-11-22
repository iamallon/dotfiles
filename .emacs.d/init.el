;; -*- lexical-binding: t; -*-
(tool-bar-mode -1)
(scroll-bar-mode -1)
(menu-bar-mode -1)
(add-to-list 'default-frame-alist '(font . "IBM Plex Mono-18:weight=medium"))
(add-to-list 'default-frame-alist '(alpha-background . 85))
(add-to-list 'default-frame-alist '(fullscreen . maximized))

(global-display-line-numbers-mode 1)
(delete-selection-mode 1)
(recentf-mode 1)
(electric-pair-mode 1)
(editorconfig-mode 1)
(etags-regen-mode 1)

(global-unset-key (kbd "<left>"))
(global-unset-key (kbd "<right>"))
(global-unset-key (kbd "<up>"))
(global-unset-key (kbd "<down>"))

(setq inhibit-splash-screen t)
(setq auto-save-default nil)
(setq make-backup-files nil)
(setq use-short-answers t)
(setq-default show-trailing-whitespace t)

(add-hook 'before-save-hook #'delete-trailing-whitespace)

(setq grep-command "rg -nHS --no-heading \"$(git rev-parse --show-toplevel 2>/dev/null || pwd)\" -e ")
(setq grep-use-null-device nil)
(global-set-key (kbd "C-x C-g") 'grep)

(hide-ifdef-mode 1)
(add-hook 'prog-mode-hook #'hide-ifdef-mode)
(setq hide-ifdef-initially t)

(setq treesit-language-source-alist
      '((bash "https://github.com/tree-sitter/tree-sitter-bash")
	(go-mod "https://github.com/camdencheek/tree-sitter-go-mod")
	(go "https://github.com/tree-sitter/tree-sitter-go")))

(setq c-default-style
      '((java-mode . "java")
	(awk-mode . "awk")
	(other . "linux")))

(add-to-list 'same-window-buffer-names "*compilation*")
(setq compilation-scroll-output 'first-error)
(setq compilation-ask-about-save nil)

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'naysayer t)

(add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
(add-to-list 'auto-mode-alist '("\\.mod\\'" . go-mod-ts-mode))
(add-to-list 'auto-mode-alist '("\\.sh\\'" . bash-ts-mode))
