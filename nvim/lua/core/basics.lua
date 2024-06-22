vim.g.mapleader = " "
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.o.number  = true
vim.o.relativenumber = false
vim.o.wrap = false
vim.o.expandtab = true
vim.o.incsearch = true
vim.o.tabstop = 4
vim.o.cursorline = true
vim.o.ignorecase = true
vim.o.hlsearch = false
vim.o.swapfile = false
vim.o.splitbelow = true
vim.o.splitright = true
vim.o.scrolloff = 3
vim.o.errorbells = false
vim.o.shiftwidth = 4
vim.o.numberwidth = 4
vim.o.termguicolors = true
vim.o.colorcolumn = '120'
vim.o.showmode = false
vim.o.showtabline = 4
vim.o.signcolumn = 'yes'
vim.o.mouse = 'a'

vim.opt.termguicolors = true

vim.keymap.set('n', '<leader>h', '<C-w>h')
vim.keymap.set('n', '<leader>j', '<C-w>j')
vim.keymap.set('n', '<leader>k', '<C-w>k')
vim.keymap.set('n', '<leader>l', '<C-w>l')

vim.keymap.set('n', '<leader>f', '<cmd>lua require("telescope.builtin").current_buffer_fuzzy_find()<CR>', { noremap = true })

vim.keymap.set('n', '<leader>g', "<Plug>(lazygit.nvim)", { noremap = true })

vim.keymap.set('n', '<leader>p', '<cmd>lua require("telescope.builtin").find_files()<CR>', { noremap = true })
vim.keymap.set('n', '<leader>o', '<cmd>lua require("telescope.builtin").oldfiles()<CR>', { noremap = true })
vim.keymap.set('n', '<leader>b', '<cmd>lua require("telescope.builtin").buffers()<CR>', { noremap = true })
vim.keymap.set('n', '<leader>r', "<cmd>lua require('telescope.builtin').registers()<CR>", { noremap = true })
vim.keymap.set('n', '<leader>e', '<cmd>lua require("telescope").extensions.file_browser.file_browser()<CR>', { noremap = true })
vim.keymap.set('n', '<leader><S-F>', '<cmd>lua require("telescope.builtin").live_grep()<CR>', { noremap = true })

vim.keymap.set('n', '<leader>\\', ':tabnew<CR>', { noremap = true })
vim.keymap.set('n', '<leader>]', ':tabnext<CR>', { noremap = true })
vim.keymap.set('n', '<leader>[', ':tabprev<CR>', { noremap = true })
vim.keymap.set('n', '<leader>|', ':tabclose<CR>', { noremap = true })

vim.keymap.set('n', '<leader>t', '<cmd>:NvimTreeFindFile<CR>', { noremap = true })
vim.keymap.set('n', '<leader>x', '<cmd>:NvimTreeClose<CR>', { noremap = true })

vim.keymap.set('n', '<leader>%', '<cmd>vsplit<CR>', { noremap = true })
vim.keymap.set('n', '<leader>"', '<cmd>split<CR>', { noremap = true })

vim.keymap.set('n', '<leader>5', '<cmd>vsplit<CR>', { noremap = true })
vim.keymap.set('n', '<leader>\'', '<cmd>split<CR>', { noremap = true })

vim.keymap.set('n', '<leader>n', '<cmd>b#<CR>', { noremap = true })

vim.api.nvim_set_keymap('n', '<leader>i', '<cmd>lua require("harpoon.ui").toggle_quick_menu()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>s', '<cmd>lua require("harpoon.mark").add_file()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>a', '<cmd>lua require("harpoon.ui").nav_prev()<CR>', { noremap = true })
vim.api.nvim_set_keymap('n', '<leader>d', '<cmd>lua require("harpoon.ui").nav_next()<CR>', { noremap = true })
