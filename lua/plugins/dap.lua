return {
    {
        "mfussenegger/nvim-dap",
        config = function()
            local dap = require("dap")

            -- Addapter Setup
            dap.adapters.codelldb = {
                type = "server",
                port = "${port}",
                executable = {
                    command = vim.fn.expand("$HOME/.var/app/com.visualstudio.code/data/vscode/extensions/vadimcn.vscode-lldb-1.11.5/adapter/codelldb"),
                    args = {"--port", "${port}"},
                },
            }

            -- Zig Config
            dap.configurations.zig = {
                {
                    name = "Launch",
                    type = "codelldb",
                    request = "launch",
                    program = "${workspaceFolder}/zig-out/bin/runner",
                    cwd = "${workspaceFolder}",
                    stopOnEntry = false,
                    args = {"--help"},
                },
            }
        end,
        keys = {
            {"<F2>", function() require("dap").toggle_breakpoint() end, {desc = "Toggle Breakpoint", mode = {"n"}}},
            {"<F5>", function() require("dap").continue() end, {desc = "Continue Execution", mode = {"n"}}},
        },
    },
    {
        "rcarriga/nvim-dap-ui",
        dependencies = { "nvim-dap", "nvim-neotest/nvim-nio"},
        config = function()
            local dapui = require("dapui")
            dapui.setup()
            local dap = require("dap")

            dap.listeners.before.attach.dapui_config = function() dapui.open() end
            dap.listeners.before.launch.dapui_config = function() dapui.open() end

        end,
        keys = {
            {"<leader>db", function() require('dapui').toggle() end, desc = "Toggle Debugger UI"},
        },
    }
}

