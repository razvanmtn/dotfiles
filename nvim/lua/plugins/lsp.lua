return {
    {
        "williamboman/mason.nvim",
        config = function()
            require("mason").setup()
        end,
    },
    {
        "williamboman/mason-lspconfig.nvim",
        dependencies = { "williamboman/mason.nvim" },
        config = function()
            require("mason-lspconfig").setup({
                ensure_installed = {
                    "ts_ls",
                    "dockerls",
                    "cssls",
                    "html",
                    "eslint",
                    "yamlls",
                    "jsonls",
                    "sqlls",
                },
            })

            -- Configure servers using native vim.lsp.config
            vim.lsp.config('ts_ls', {
                cmd = { 'typescript-language-server', '--stdio' },
                filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
                root_markers = { 'package.json', 'tsconfig.json', '.git' },
            })

            vim.lsp.config('dockerls', {
                cmd = { 'docker-langserver', '--stdio' },
                filetypes = { 'dockerfile' },
                root_markers = { 'Dockerfile', '.git' },
            })

            vim.lsp.config('cssls', {
                cmd = { 'vscode-css-language-server', '--stdio' },
                filetypes = { 'css', 'scss', 'less' },
                root_markers = { 'package.json', '.git' },
            })

            vim.lsp.config('html', {
                cmd = { 'vscode-html-language-server', '--stdio' },
                filetypes = { 'html' },
                root_markers = { 'package.json', '.git' },
            })

            vim.lsp.config('eslint', {
                cmd = { 'vscode-eslint-language-server', '--stdio' },
                filetypes = { 'javascript', 'javascriptreact', 'typescript', 'typescriptreact' },
                root_markers = { '.eslintrc.js', '.eslintrc.json', 'package.json', '.git' },
            })

            vim.lsp.config('yamlls', {
                cmd = { 'yaml-language-server', '--stdio' },
                filetypes = { 'yaml', 'yml' },
                root_markers = { '.git' },
            })

            vim.lsp.config('jsonls', {
                cmd = { 'vscode-json-language-server', '--stdio' },
                filetypes = { 'json', 'jsonc' },
                root_markers = { 'package.json', '.git' },
            })

            vim.lsp.config('sqlls', {
                cmd = { 'sql-language-server', 'up', '--method', 'stdio' },
                filetypes = { 'sql', 'mysql' },
                root_markers = { '.git' },
            })

            -- Enable LSP on appropriate filetypes
            vim.api.nvim_create_autocmd('FileType', {
                pattern = {
                    'javascript', 'javascriptreact', 'typescript', 'typescriptreact',
                    'dockerfile', 'css', 'scss', 'less', 'html', 'yaml', 'yml',
                    'json', 'jsonc', 'sql', 'mysql'
                },
                callback = function()
                    vim.lsp.enable()
                end,
            })
        end,
    },
}
