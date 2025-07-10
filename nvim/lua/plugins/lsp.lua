return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            "williamboman/mason.nvim",
            "williamboman/mason-lspconfig.nvim",
            {
                'williamboman/nvim-lsp-installer',
                config = function()
                    require("nvim-lsp-installer").setup {}
                end,
            },
        },
        config = function()
            require("mason").setup()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ts_ls",
                    "dockerls",
                    "cssls",
                    "html",
                    "eslint",
                    "cssls",
                    "yamlls",
                    "jsonls",
                },
            })

            local lspConfig = require("lspconfig");
            
            lspConfig.ts_ls.setup{}
            lspConfig.dockerls.setup{}
            lspConfig.cssls.setup{}
            lspConfig.html.setup{}
            lspConfig.eslint.setup{}
            lspConfig.cssls.setup{}
            lspConfig.yamlls.setup{}
            lspConfig.jsonls.setup{}
            lspConfig.sqlls.setup{}
        end,
    },
}
