(module magic.plugin.lazygit
  {autoload {util magic.util
             nvim aniseed.nvim}})

(defn- map [from to]
  (util.nnoremap from to))

(let [(ok? lg) (pcall #(require :lazygit))]
  (when ok?
    (map :<leader>lg "LazyGit")))
