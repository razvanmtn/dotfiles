return {
    {
        'neovim/nvim-lspconfig',
        dependencies = {
            {
                'williamboman/nvim-lsp-installer',
                config = function()
                    require("nvim-lsp-installer").setup {}
                end,
            },
        },
        config = function()
            local lspConfig = require("lspconfig");
            
            lspConfig.tsserver.setup{}
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
