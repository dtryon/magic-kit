(module magic.plugin.tree
  {autoload {util magic.util
             nvim aniseed.nvim}})

(defn- map [from to]
  (util.nnoremap from to))

(let [(ok? tree) (pcall #(require :nvim-tree))]
  (when ok?
    (tree.setup {})
    (map :<leader>k "NvimTreeToggle")))
