return {
    {
        "ahmedkhalf/project.nvim",
        opts = {
            manual_mode = false,
            detection_methods = { "pattern", "lsp" },
            patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json" },
            show_hidden = false,
            silent_chdir = true,
            ignore_lsp = {},
            datapath = vim.fn.stdpath("data"),
        },
        config = function(_, opts)
            require("project_nvim").setup(opts)
            require("telescope").load_extension("projects")
        end,
        keys = {
            {
                "<leader>fp",
                function()
                    -- Сначала закрываем все буферы
                    vim.cmd("silent! %bdelete!")
                    -- Потом открываем выбор проекта
                    vim.schedule(function()
                        vim.cmd("Telescope projects")
                    end)
                end,
                desc = "Projects",
            },
        },
    },
}
