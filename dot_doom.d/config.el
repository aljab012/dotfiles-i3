;;; $DOOMDIR/config.el -*- lexical-binding: t; -*-

;; user info
(setq user-full-name "Alhaitham Al Jabri"
      user-mail-address "jabri.dev@gmail.com")


;; font/theme
(setq doom-font (font-spec :family "monospace" :size 12 :weight 'semi-light)
       doom-variable-pitch-font (font-spec :family "sans" :size 12))

(setq doom-theme 'leuven)


;; org mode
(setq org-directory "~/org/")


;; editor window
(setq display-line-numbers-type t)


;; - `load!' for loading external *.el files relative to this one
;; - `use-package!' for configuring packages
;; - `after!' for running code after a package has loaded
;; - `add-load-path!' for adding directories to the `load-path', relative to
;;   this file. Emacs searches the `load-path' when you load packages with
;;   `require' or `use-package'.
;; - `map!' for binding new keys
;;
;; To get information about any of these functions/macros, move the cursor over
;; the highlighted symbol at press 'K' (non-evil users must press 'C-c c k').
;; This will open documentation for it, including demos of how they are used.


;; prettier config
(use-package prettier-js
  :hook ((typescript-mode . prettier-js-mode)
         (js-mode . prettier-js-mode)
         (json-mode . prettier-js-mode)
         (yaml-mode . prettier-js-mode)))
(setq prettier-js-args '(
  "--trailing-comma" "es5"
  "--single-quote" "true"
  "--semi" "false"
  ))

(add-hook 'go-mode-hook #'format-all-mode)
(add-hook 'sql-mode-hook #'format-all-mode)

;; projecttile config
(setq projectile-project-search-path '("~/dev" "~/aljab012"))

;;(setq-default ediff-forward-word-function 'forward-char)

;; typescript mode keybindings
(map! :map typescript-mode
     :i "C-." #'tide-fix)

;; leetcode
(setq leetcode-prefer-language "golang")

(add-to-list 'exec-path "/home/arch/.local/bin")

(add-to-list 'auto-mode-alist '("\\.proto\\'" . protobuf-mode))
