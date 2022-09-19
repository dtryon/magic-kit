(module magic.plugin.lspinstaller
  {autoload {nvim aniseed.nvim}})

(let [(ok? lspinstall) (pcall #(require :nvim-lsp-installer))]
  (when ok?
    (lspinstall.setup {:automatic_installation true})))
