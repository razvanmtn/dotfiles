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
                    "tsserver",
                    "dockerls",
                    "cssls",
                    "html",
                    "eslint",
                    "cssls",
                    "yamlls",
                    "jsonls",
                    "gopls",
                    "rust_analyzer",
                },
            })

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
            lspConfig.gopls.setup{}
            lspConfig.rust_analyzer.setup{
                on_attach=on_attach,
                settings = {
                    ['rust-analyzer'] = {
                        diagnostics = {
                            enable = true;
                        },
                        imports = {
                            granularity = {
                                group = "module",
                            },
                            prefix = "self",
                        },
                        cargo = {
                            buildScripts = {
                                enable = true,
                            },
                        },
                        procMacro = {
                            enable = true
                        }
                    }
                }
            }
        end,
    },
}
