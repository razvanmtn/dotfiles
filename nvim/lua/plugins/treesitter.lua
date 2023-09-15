return {
    'nvim-treesitter/nvim-treesitter-textobjects',
    {
        'nvim-treesitter/nvim-treesitter',
        build = ":TSUpdate",
        config = function()
            require'nvim-treesitter.configs'.setup {
                ensure_installed = {
                    "css",
                    "csv",
                    "dockerfile",
                    "html",
                    "http",
                    "javascript",
                    "json",
                    "json5",
                    "jsonc",
                    "lua",
                    "regex",
                    "scss",
                    "sql",
                    "tsx",
                    "typescript",
                    "vim",
                    "vimdoc",
                    "xml",
                    "yaml",
                },
                context_commentstring = {
                    enable = true
                },
                highlight = {
                    enable = true
                },
                indent = {
                    enable = true
                }
            }
        end
    },
}
