return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
        "nvim-tree/nvim-web-devicons",
    },

    config = function()
        local telescope = require("telescope")
        local actions = require("telescope.actions")
        local builtin = require("telescope.builtin")
        
        -- Loading dependencies
        telescope.load_extension("fzf")

        telescope.setup({
            defaults = {
                path_display = { "smart" },
                mappings = {
                    i = {
                        ["<C-k>"] = actions.move_selection_previous,
                        ["<C_j>"] = actions.move_selection_next,
                    },
                },
                extensions = {
                    themes = {
                        enable_previewer = true,
                        enable_live_preview = true,
                        persist = {
                            enabled = true,
                            path = vim.fn.stdpath("config") .. "/lua/colorscheme.lua",
                        },
                    }
                }
            }
        })

        -- Keymaps
        vim.keymap.set("n", "<leader>pr", "<cmd>Telescope oldfiles<CR>", { desc = "Fuzzy find recent files" })

    end
}
