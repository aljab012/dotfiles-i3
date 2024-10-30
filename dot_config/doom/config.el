;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; user info
(setq user-full-name "Alhaitham Al Jabri"
      user-mail-address "jabri.dev@gmail.com")


;; font/theme
(setq doom-font (font-spec :family "monospace" :size 18 :weight 'semi-light)
      doom-variable-pitch-font (font-spec :family "sans" :size 18))

(setq doom-theme 'doom-one)

;; org mode
(setq org-directory "~/org/")

;; editor window
(setq display-line-numbers-type t)

;; projecttile config
(setq projectile-project-search-path '("~/work" "~/personal"))

;; leetcode
(setq leetcode-prefer-language "golang")

(add-to-list 'exec-path "/home/arch/.local/bin")

(add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))

;; copilot mode config
(use-package! copilot
  :hook ((go-mode . copilot-mode)
         (typescript-mode . copilot-mode)
         (python-mode . copilot-mode)
         (markdown-mode . copilot-mode)
         (yaml-mode . copilot-mode)
         (json-mode . copilot-mode)
         (js-mode . copilot-mode)
         (dockerfile-mode . copilot-mode)
         (emacs-lisp-mode . copilot-mode)
         (sql-mode . copilot-mode))
  :bind (("C-TAB" . 'copilot-accept-completion-by-word)
         ("C-<tab>" . 'copilot-accept-completion-by-word)
         :map copilot-completion-map
         ("<tab>" . 'copilot-accept-completion)
         ("TAB" . 'copilot-accept-completion)
         ("C-a" . 'copilot-accept-completion)
         ("C-g" . #'copilot-clear-overlay)
         ("C-n" . #'copilot-next-completion)
         ("C-p" . #'copilot-previous-completion))
  :config (setq global-company-mode t)
  )

(add-hook 'leetcode-solution-mode-hook
          (lambda() (flycheck-mode -1)))

(use-package! lsp-tailwindcss)

(setq warning-minimum-level :emergency)

(setq +format-on-save-disabled-modes (add-to-list '+format-on-save-disabled-modes 'dockerfile-mode))

;; lsp config
(setq lsp-restart 'auto-restart)
