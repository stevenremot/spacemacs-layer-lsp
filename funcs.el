;;; funcs.el --- Utility functions for the lsp layer

;;; Commentary:
;; 

(defun language-server-protocol/setup-lsp ()
  (with-eval-after-load 'lsp-mode
    (require 'lsp-flycheck))

  (add-hook 'lsp-mode-hook
            #'(lambda ()
                (flycheck-mode)
                (company-mode)
                (local-set-key (kbd "M-.") #'xref-find-definitions))))

;;; funcs.el ends here
