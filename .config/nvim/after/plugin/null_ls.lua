local lsp_formatting = function(bufnr)
    vim.lsp.buf.format({
        filter = function(client)
            return client.name == "null-ls"
        end,
        bufnr = bufnr,
        timeout_ms = 10000
    })
end

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})
require("null-ls").setup({
    sources = { require("null-ls").builtins.formatting.prettierd.with({
        env = {
            PRETTIERD_DEFAULT_CONFIG = vim.fn.expand("~/.config/nvim/utils/linting/.prettierrc.json"),
        },
    }),
    },
    on_attach = function(client, bufnr)
        if client.supports_method("textDocument/formatting") then
            vim.api.nvim_clear_autocmds({ group = augroup, buffer = bufnr })
            vim.api.nvim_create_autocmd("BufWritePre", {
                group = augroup,
                buffer = bufnr,
                callback = function()
                    lsp_formatting(bufnr)
                end,
            })
        end
    end,
})
