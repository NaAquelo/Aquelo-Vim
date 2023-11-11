local M = {}

M.capabilities = vim.lsp.protocol.make_client_capabilities()

-- protected call to get the cmp
local status_cmp_ok, cmp_nvim_lsp = pcall(require, "cmp_nvim_lsp")
if not status_cmp_ok then
  return
end

M.capabilities.textDocument.completion.completionItem.snippetSupport = true
M.capabilities = cmp_nvim_lsp.default_capabilities(M.capabilities)

-- Here we declare the setup function and add the modifications in signs and extra configs, like virtual text, false update_in_insert, rounded borders for float windows, etc.
M.setup = function()
    local signs = {
        { name = "DiagnosticSignError", text = "⛌" },
        { name = "DiagnosticSignWarn", text = "⚠" },
        { name = "DiagnosticSignHint", text = "●" },
        { name = "DiagnosticSignInfo", text = "●" },
    }

    for _, sign in ipairs(signs) do
        vim.fn.sign_define(sign.name, { texthl = sign.name, text = sign.text, numhl = "" })
    end

    local config = {
        virtual_text = true,
        signs = {
          active = signs,
        },
        update_in_insert = false,
        underline = true,
        severity_sort = true,
    }

    vim.diagnostic.config(config)
end

-- Here we set up keymaps. You can change them if you already have specifics for these functions, or just want to try another keymap.
local function lsp_keymaps(bufnr)
    local opts = { noremap = true, silent = true }
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>gd", "<cmd>lua vim.lsp.buf.definition()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>rw", "<cmd>lua vim.lsp.buf.rename()<CR>", opts)
    vim.api.nvim_buf_set_keymap(bufnr, "n", "<leader>dd", "<cmd>lua vim.diagnostic.open_float()<CR>", opts)

    vim.cmd([[ command! Format execute 'lua vim.lsp.buf.format()' ]])
end

-- this function will attach our previously set keymaps and our lsp_formatting function to every buffer.
M.on_attach = function(client, bufnr)
    lsp_keymaps(bufnr)
    if client.supports_method("textDocument/formatting") then
        vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
    end
end

return M
