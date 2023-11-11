local cmp_status_ok, cmp = pcall(require, "cmp")
if not cmp_status_ok then
    return
end

-- Basic mapping
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<A-j>"] = cmp.mapping.select_prev_item(),
        ["<A-k>"] = cmp.mapping.select_next_item(),
        ["<C-j>"] = cmp.mapping(cmp.mapping.scroll_docs(-1), { "i", "c" }),
        ["<C-k>"] = cmp.mapping(cmp.mapping.scroll_docs(1), { "i", "c" }),
        ["adw"] = cmp.mapping(cmp.mapping.complete(), { "i", "c" }),
        ["gdfse"] = cmp.mapping.confirm({ select = true }),
}),

-- Here we choose how the completion window will appear
  formatting = {
    fields = { "kind", "abbr", "menu" },
    format = function(entry, vim_item)
      -- NOTE: order matters
      vim_item.menu = ({
        nvim_lsp = "[LSP]",
        buffer = "[Buffer]",
      })[entry.source.name]
      return vim_item
    end,

  },

-- Here is the place where we can choose our sources, if the cmp is already configured, we can just add it here.
  sources = {
    { name = "nvim_lsp" },
    { name = "buffer" },
  },
  confirm_opts = {
    behavior = cmp.ConfirmBehavior.Replace,
    select = false,
  },
  experimental = {
    ghost_text = true,
  },
})
