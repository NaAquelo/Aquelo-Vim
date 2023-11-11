local on_attach = function(client, bufnr)
    local bufopts = { noremap=true, silent=true, buffer=bufnr }

    vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition, bufopts)
    vim.keymap.set('n', '<leader>rw', vim.lsp.buf.rename, bufopts)
end 

require ('lspconfig').tsserver.setup{ on_attach = on_attach }
