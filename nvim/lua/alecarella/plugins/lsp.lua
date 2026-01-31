return {
    "neovim/nvim-lspconfig",
    dependencies = {
        {
            "williamboman/mason.nvim",
            opts = {
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    }
                }
            }
        },
        {
            "mason-org/mason-lspconfig.nvim",
            opts = {
                automatic_enable = true
            }
        }
    },
    config = function()
        vim.api.nvim_create_autocmd("LspAttach", {
            callback = function(args)
                local telescope_builtin = require("telescope.builtin")
                local opts = { buffer = args.buf, silent = true }

                vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)

                vim.keymap.set("n", "<leader>gd", vim.lsp.buf.definition, opts)
                vim.keymap.set("n", "<leader>gr", telescope_builtin.lsp_references, opts)
                vim.keymap.set("n", "<leader>gi", vim.lsp.buf.implementation, opts)

                vim.keymap.set("n", "<leader>do", vim.diagnostic.open_float, opts)
                vim.keymap.set("n", "<leader>dn", vim.diagnostic.goto_next, opts)
                vim.keymap.set("n", "<leader>dp", vim.diagnostic.goto_prev, opts)

                vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
                vim.keymap.set("n", "<leader>cf", vim.lsp.buf.format, opts)
                vim.keymap.set("n", "<leader>cr", vim.lsp.buf.rename, opts)

                if vim.lsp.get_client_by_id(args.data.client_id).name == "clangd" then
                    vim.keymap.set("n", "<leader>cs", ":LspClangdSwitchSourceHeader<CR>", opts)
                end
            end
        })
    end
}
