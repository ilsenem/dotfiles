return {
        {
                "neovim/nvim-lspconfig",
                dependencies = {
                        "williamboman/mason.nvim",
                        "williamboman/mason-lspconfig.nvim",
                },
                config = function()
                        require('mason').setup()
                        require('mason-lspconfig').setup({
                                ensure_installed = {
                                        'autotools_ls',
                                        'bashls',
                                        'docker_compose_language_service',
                                        'dockerls',
                                        'jsonls',
                                        'lua_ls',
                                        'luau_lsp',
                                        'phpactor',
                                        'taplo',
                                }
                        })
                end,
        }
}

