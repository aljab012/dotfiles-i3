;; -*- no-byte-compile: t; -*-
;;; $DOOMDIR/packages.el

;; prettier config
(package! prettier-js)

;; leetcode
(package! leetcode)

;; proto buffers
;;(package! protobuf-mode)

;; chezmoi
(package! chezmoi)

(package! copilot
  :recipe (:host github :repo "zerolfx/copilot.el" :files ("*.el" "dist")))

(package! speed-type)

(package! anki-editor)

;; svelete mode
(package! svelte-mode)

(package! lsp-tailwindcss :recipe (:host github :repo "merrickluo/lsp-tailwindcss"))

(package! go-guru)

;; Set up tsx-mode
(package! tsi :recipe (:host github :repo "orzechowskid/tsi.el" :branch "main"))

(package! nvm
  :recipe (:host github :repo "rejeep/nvm.el"))
