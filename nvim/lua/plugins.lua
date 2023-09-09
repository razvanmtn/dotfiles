require'nvim-treesitter.configs'.setup {
  ensure_installed = {},
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

vim.notify = require("notify")
require('lualine').setup()

require('packer').startup(function()
	-- Packer
	use 'wbthomason/packer.nvim'

	-- Catppuccin Theme
	use { "catppuccin/nvim", as = "catppuccin" }
	vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha
	require("catppuccin").setup()
	vim.cmd [[colorscheme catppuccin]]

  use {
    'nvim-lualine/lualine.nvim',
    requires = {'kyazdani42/nvim-web-devicons', opt = true},
    config = function()
      require"lualine".setup {theme = 'catppuccin' }
    end
  }
  use "lukas-reineke/indent-blankline.nvim"

	-- Tabline -- tab header design
	use({
    'crispgm/nvim-tabline',
    config = function()
        require('tabline').setup({})
    end,
	})

	-- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }
  use {
    'nvim-telescope/telescope-fzf-native.nvim',
    run = ' arch -arm64 make'
  }
  use {'nvim-telescope/telescope-ui-select.nvim' }
  use 'asbjornhaland/telescope-send-to-harpoon.nvim'
  use 'ThePrimeagen/git-worktree.nvim'
  use 'ThePrimeagen/harpoon'
  use 'rcarriga/nvim-notify'

	-- NVim tree
    use {
      'kyazdani42/nvim-tree.lua',
      requires = {
        'kyazdani42/nvim-web-devicons', -- optional, for file icons
      }
    }

	use { "nvim-telescope/telescope-file-browser.nvim" }

	-- Refactoring
	use {
    "ThePrimeagen/refactoring.nvim",
    requires = {
        {"nvim-lua/plenary.nvim"},
        {"nvim-treesitter/nvim-treesitter"}
    }
  }
  use {
    "ur4ltz/surround.nvim",
    config = function()
      require"surround".setup {mappings_style = "surround"}
    end
  }

	-- Treesitter

  use 'nvim-treesitter/nvim-treesitter'
  use 'nvim-treesitter/nvim-treesitter-textobjects'

	-- LSP

  use 'williamboman/nvim-lsp-installer'
  use 'neovim/nvim-lspconfig'
  use 'onsails/lspkind.nvim'

  -- AUTOCOMPLETE
  use 'hrsh7th/nvim-cmp' -- Autocompletion plugin
  use {'tzachar/cmp-tabnine', run='./install.sh', requires = 'hrsh7th/nvim-cmp'}
  use 'hrsh7th/cmp-nvim-lsp' -- LSP source for nvim-cmp
  use 'saadparwaiz1/cmp_luasnip' -- Snippets source for nvim-cmp
  use 'L3MON4D3/LuaSnip' -- Snippets plugin
  use "rafamadriz/friendly-snippets"
end)

local Plug = vim.fn['plug#']
vim.call('plug#begin', '~/.config/nvim/plugged')

-- Vim Airline Configuration
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
vim.g.airline_theme='deus'
vim.g.airline_section_y=''
vim.g.airline_section_z='Line %l of %L'

vim.call('plug#end')

