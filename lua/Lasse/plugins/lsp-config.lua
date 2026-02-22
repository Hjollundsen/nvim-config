return {
    {
        "mason-org/mason.nvim",
        config = function()
            require("mason").setup({
                ui = {
                    icons = {
                        package_installed = "✓",
                        package_pending = "➜",
                        package_uninstalled = "✗"
                    },
                },
            })

        end
    },

    {
        "mason-org/mason-lspconfig.nvim",
        config = function()
            require("mason-lspconfig").setup({
                -- ensuring the right LSP's are installed
                ensure_installed = {
                    "lua_ls",
                    "jdtls",
                },
            })
        end,
    },

    {
        "neovim/nvim-lspconfig",
        config = function()
            -- Lua_ls LSP setup
            vim.lsp.config("lua_ls", {
                settings = {
                    Lua = {
                        diagnostics = {
                            globals = { "vim" },
                        }
                    }
                }
            })
            vim.lsp.config("jdtls", {
                cmd = { "jdtls" },
                root_dir = vim.fs.root(0, { "pom.xml", "build.gradle", ".git" }),
                settings = {
                    java = {
                      signatureHelp = { enabled = true },
                      contentProvider = { preferred = "fernflower" },
                    },
                },
            })
        end,
    },
}
