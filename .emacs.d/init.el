(tool-bar-mode -1)
(toggle-scroll-bar -1)
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

(setq inhibit-splash-screen t)
(setq auto-save-default nil)
(setq use-short-answers t)

(setq treesit-language-source-alist
   '((bash "https://github.com/tree-sitter/tree-sitter-bash")
     (go-mod "https://github.com/camdencheek/tree-sitter-go-mod")
     (go "https://github.com/tree-sitter/tree-sitter-go")))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'naysayer t)

(add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
(add-to-list 'auto-mode-alist '("\\.mod\\'" . go-mod-ts-mode))
(add-to-list 'auto-mode-alist '("\\.sh\\'" . bash-ts-mode))
