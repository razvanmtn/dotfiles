return {
    "nvim-lualine/lualine.nvim",
    name = "lualine",
    lazy = false,
    dependencies = {
        "nvim-tree/nvim-web-devicons"
    },
    config = function()
        require("lualine").setup({
            theme = "catppuccin"
        })
    end,
}
