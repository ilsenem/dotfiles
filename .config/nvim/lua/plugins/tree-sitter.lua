return {
        {
                "nvim-treesitter/nvim-treesitter",
                build = ":TSUpdate",
                config = function () 
                        local configs = require("nvim-treesitter.configs")

                        configs.setup({
                                ensure_installed = {
                                        'bash',
                                        'dockerfile',
                                        'json',
                                        'lua',
                                        'luadoc',
                                        'php',
                                        'php_only',
                                        'toml',
                                        'vim',
                                        'vimdoc',
                                },
                                highlight = { enable = true },
                                indent = { enable = true },
                        })
                end,
        },
}
