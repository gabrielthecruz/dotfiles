(cond
  ((eq system-type 'windows-nt)
    (setq custom-file "C:/Users/gabri/AppData/Roaming/.emacs.d/emacs.custom.el")
    (add-to-list 'load-path "C:/Users/gabri/AppData/Roaming/.emacs.d/custom-packages/")
  )

  ((eq system-type 'gnu/linux)
    (setq custom-file "~/.emacs.d/emacs.custom.el")
    (add-to-list 'load-path "~/.emacs.d/custom-packages/")
  ))

(setq inhibit-startup-message t)

; (add-to-list 'default-frame-alist '(width . 80))
; (add-to-list 'default-frame-alist '(height . 25))
; (add-to-list 'default-frame-alist '(top . 75))
; (add-to-list 'default-frame-alist '(left . 250))
(add-to-list 'default-frame-alist '(font . "Iosevka-16"))
(add-to-list 'default-frame-alist '(fullscreen . maximized))
(add-to-list 'initial-frame-alist '(fullscreen . maximized))

(setq tab-width 2)
(setq c-basic-offset 2)

(menu-bar-mode 0)
(tool-bar-mode 0)
(scroll-bar-mode 0)
(ido-mode 1)
(ido-everywhere 1)
(ido-vertical-mode 1)
(global-display-line-numbers-mode 1)
(setq display-line-numbers-type 'relative)

(require 'simpc-mode)
(add-to-list 'auto-mode-alist '("\\.[hc]\\(pp\\)?\\'" . simpc-mode))

(require 'package)
(add-to-list 'package-archives '("melpa" . "https://melpa.org/packages/"))
(package-initialize)

(use-package lsp-mode
  :init
  ;; set prefix for lsp-command-keymap (few alternatives - "C-l", "C-c l")
  (setq lsp-keymap-prefix "C-c l")
  :hook (;; replace XXX-mode with concrete major-mode(e. g. python-mode)
    (csharp-mode . lsp)
    ;; if you want which-key integration
    (lsp-mode . lsp-enable-which-key-integration))
  :commands lsp)

;; optionally
(use-package lsp-ui :commands lsp-ui-mode)
;; if you are helm user
(use-package helm-lsp :commands helm-lsp-workspace-symbol)
;; if you are ivy user
(use-package lsp-ivy :commands lsp-ivy-workspace-symbol)
(use-package lsp-treemacs :commands lsp-treemacs-errors-list)

;; optionally if you want to use debugger
(use-package dap-mode)
;; (use-package dap-LANGUAGE) to load the dap adapter for your language

;; optional if you want which-key integration
(use-package which-key
  :config
  (which-key-mode))

(use-package company :ensure t)

; smex configuration
(require 'smex)
(smex-initialize)

;; 2. Bind smex to the standard M-x key (Alt+x)
(global-set-key (kbd "M-x") 'smex)

;; Optional: Bind 'smex-major-mode-commands' to a different key.
;; This shows *only* commands relevant to the current major mode (e.g., dired- commands in Dired).
(global-set-key (kbd "M-X") 'smex-major-mode-commands)

;; Optional: Bind a key to the original Emacs M-x command, just in case.
;; You could use C-c M-x or C-c C-x.
(global-set-key (kbd "C-c C-x") 'execute-extended-command)

;; Optional: Change where smex saves its history file (default is ~/.smex-items)
;; (setq smex-save-file "~/.emacs.d/smex-history")

;; attach auto fill mode to org mode
(add-hook 'org-mode-hook 'turn-on-auto-fill)

(load-file custom-file)

