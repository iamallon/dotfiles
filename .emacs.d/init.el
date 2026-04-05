(global-display-line-numbers-mode 1)
(setq auto-save-default nil)

(setq treesit-language-source-alist
   '((bash "https://github.com/tree-sitter/tree-sitter-bash")
     (go-mod "https://github.com/camdencheek/tree-sitter-go-mod")
     (go "https://github.com/tree-sitter/tree-sitter-go")))

(add-to-list 'custom-theme-load-path "~/.emacs.d/themes/")
(load-theme 'naysayer t)

(add-to-list 'auto-mode-alist '("\\.go\\'" . go-ts-mode))
(add-to-list 'auto-mode-alist '("\\.mod\\'" . go-mod-ts-mode))
(add-to-list 'auto-mode-alist '("\\.sh\\'" . bash-ts-mode))
