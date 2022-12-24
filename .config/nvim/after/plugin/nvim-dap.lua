local dap = require('dap')

-- dap.adapters.node2 = {
--     type = 'executable',
--     command = 'node',
--     args = {vim.fn.stdpath('data') .. '/mason/packages/vscode-node-debug2/out/src/nodeDebug.js'}
-- }
require('dap-vscode-js').setup({
    adapters = {'pwa-node'},
    debugger_path = vim.fn.stdpath('data') .. '/mason/packages/js-debug-adapter'
})

for _, language in ipairs({ "typescript", "javascript" }) do
    dap.configurations[language] = {
        {
            name = 'Attach to process',
            type = 'pwa-node',
            request = 'attach',
            processId = require('dap.utils').pick_process,
            cwd = vim.fn.getcwd()
        }
    }
end

-- dap.set_log_level('TRACE')
