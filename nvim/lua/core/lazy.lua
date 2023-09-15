-- Lazy Package Manager
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
  vim.fn.system({
    "git",
    "clone",
    "--filter=blob:none",
    "https://github.com/folke/lazy.nvim.git",
    "--branch=stable", -- latest stable release
    lazypath,
  })
end
vim.opt.rtp:prepend(lazypath)

-- Load plugins and plugin configuration
require("lazy").setup({
    { import = "plugins/catppuccin" },
    { import = "plugins/lualine" },
    { import = "plugins/indent-blankline" },
    { import = "plugins/tabline" },
    { import = "plugins/telescope" },
    { import = "plugins/tree" },
    { import = "plugins/refactoring" },
    { import = "plugins/surround" },
    { import = "plugins/cmp" },
    { import = "plugins/lsp" },
    { import = "plugins/harpoon" },
    { import = "plugins/notify" },
    { import = "plugins/worktree" },
    { import = "plugins/treesitter" },
})
