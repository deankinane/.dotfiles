local dap = require('dap')

dap.adapters.chrome = {
    type = 'executable',
    command = 'node',
    args = {vim.fn.stdpath('data') .. '/mason/bin/chrome-debug-adapter'}
}

for _, language in ipairs({ "typescript", "javascript", "typescriptreact" }) do
    dap.configurations[language] = {
        {
            type = "chrome",
            request = "launch",
            program = '${file}',
            cwd = vim.fn.getcwd(),
            sourceMaps = true,
            protocol = 'inspector',
            port = 9222,
            webRoot = '${workspaceFolder}'
        },
    }
end

dap.set_log_level('TRACE')
