return {
    'nvim-telescope/telescope.nvim',
    tag = '0.1.3',
    dependencies = {
        'nvim-lua/plenary.nvim',
        'nvim-treesitter/nvim-treesitter',
        {
            'nvim-telescope/telescope-fzf-native.nvim',
            build = 'make'
        },
        'nvim-telescope/telescope-ui-select.nvim',
        'nvim-telescope/telescope-file-browser.nvim',
    },
    config = function()
        local telescope = require('telescope')

        telescope.setup{
            defaults = {
                file_ignore_patterns = { "yarn.lock", "package-lock.json", "node_modules", ".git", ".map" },
                mappings = {
                    i = {
                        ["<C-h>"] = telescope.extensions.send_to_harpoon.actions.send_selected_to_harpoon
                    },
                }
            },
            extensions = {
                fzf = {
                    fuzzy = true,
                    override_generic_sorter = false,
                    override_file_sorter = true,
                    case_mode = "smart_case"
                },
                ["ui-select"] = {
                    require("telescope.themes").get_dropdown {}
                },
        		file_browser = {
                    theme = "ivy",
                    hijack_netrw = true,
                    mappings = {
                        ["i"] = {},
                        ["n"] = {},
                    },
                },
            },
            pickers = {
                buffers = {
                    show_all_buffers = true,
                    sort_lastused = true,
                    mappings = {
                        i = {
                            ["<D-d>"] = "delete_buffer"
                        }
                    }
                }
            }
        }
         
        telescope.load_extension("git_worktree")
        telescope.load_extension("fzf")
        telescope.load_extension("harpoon")
        telescope.load_extension("send_to_harpoon")
        telescope.load_extension("ui-select")
        telescope.load_extension("refactoring")
    end,
}
