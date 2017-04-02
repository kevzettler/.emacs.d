;; All the js setup
(add-to-list 'auto-mode-alist '("\\.js[x]?\\'" . js-mode))       ;; JS + JSX


;; ;; for better jsx syntax-highlighting in web-mode
;; (defadvice web-mode-highlight-part (around tweak-jsx activate)
;;   (if (equal web-mode-content-type "jsx")
;;     (let ((web-mode-enable-part-face nil))
;;       ad-do-it)
;;     ad-do-it))

;; ;; set web-mode-content-type to jsx for js and jsx files
;; (setq web-mode-content-types-alist
;;   '(("jsx" . "\\.js[x]?\\'")))

;;(add-hook `js-mode-hook `editorconfig-mode)
(add-hook `js-mode-hook
          (lambda ()
            ;; Scan the file for nested code blocks
            (imenu-add-menubar-index)
            ;; Activate the folding mode
            (hs-minor-mode t)))

;; adjust indents for web-mode to 2 spaces
(defun my-web-mode-hook ()
  "Hooks for Web mode. Adjust indents"
    ;;; http://web-mode.org/
  (setq web-mode-markup-indent-offset 2)
  (setq web-mode-css-indent-offset 2)
  (setq web-mode-js-indent-offset 2)
  (setq web-mode-code-indent-offset 2))
(add-hook 'web-mode-hook  'my-web-mode-hook)

;;(modify-syntax-entry ?` "\"" js-mode-syntax-table)
