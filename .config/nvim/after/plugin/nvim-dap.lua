local dap = require('dap')

require('dap-vscode-js').setup({
    adapters = {'pwa-node', 'pwa-chrome', 'node-terminal'},
    debugger_path = vim.fn.stdpath('data') .. '/mason/packages/js-debug-adapter',
})

for _, language in ipairs({ "typescript", "javascript" }) do
    dap.configurations[language] = {
        {
            name = 'Launch',
            type = 'pwa-node',
            request = 'launch',
            args = '${relativeFile}',
            cwd = vim.fn.getcwd(),
            runtimeExecutable = 'node',
            runtimeArgs = {'-r', 'ts-node/register'},
            protocol = 'inspector',
            internalConsoleOptions = 'openOnSessionStart'
        },
        {
            name = 'Attach to process',
            type = 'pwa-node',
            request = 'attach',
            processId = require('dap.utils').pick_process,
            cwd = vim.fn.getcwd()
        }
    }
end

dap.set_log_level('ERROR')

local dapui = require('dapui')
dapui.setup({
    layouts = {
        {
            elements = {
                { id = 'scopes', size = 0.75 },
                { id = 'watches' },
            },
            size = 50,
            position = 'left'
        },
        {
            elements = {
                'breakpoints',
            },
            position = 'right',
            size = 20
        },
        {
            elements = {
                { id = 'repl' },
            },
            size = 0.25,
            position = 'bottom'
        }
    },
})

dap.listeners.after.event_initialized["dapui_config"] = function()
  dapui.open()
end
dap.listeners.before.event_terminated["dapui_config"] = function()
  dapui.close()
end
dap.listeners.before.event_exited["dapui_config"] = function()
  dapui.close()
end
