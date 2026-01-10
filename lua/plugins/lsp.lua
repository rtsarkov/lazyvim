return {
    {
        "neovim/nvim-lspconfig",
        opts = {
            servers = {
                intelephense = {
                    cmd = { "intelephense", "--stdio" },
                    filetypes = { "php" },
                    root_markers = { ".git", "composer.json" },
                },
                gopls = {
                    settings = {
                        gopls = {
                            gofumpt = true,
                            completeUnimported = true,
                            staticcheck = true,
                            analyses = {
                                unusedparams = true,
                                unusedwrite = true,
                                unusedvariable = true,
                                ST1000 = false,
                            },
                        },
                    },
                },
            },
        },
    },
}
