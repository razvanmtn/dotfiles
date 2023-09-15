return {
    'ThePrimeagen/harpoon',
    dependencies = {
        'asbjornhaland/telescope-send-to-harpoon.nvim',
    },
    config = function()
        require('harpoon').setup({
            global_settings = {
                save_on_toggle = true,
                save_on_change = true,
                enter_on_sendcmd = false,
                tmux_autoclose_windows = false,
                excluded_filetypes = { "harpoon" },
                mark_branch = false,
            }
        })
    end,
}
