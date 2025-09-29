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
              staticcheck = true,
            },
          },
          -- 👇 добавим auto organize imports перед сохранением
          on_attach = function(client, bufnr)
            if client.name == "gopls" then
              vim.api.nvim_create_autocmd("BufWritePre", {
                buffer = bufnr,
                callback = function()
                  -- Организуем импорты
                  vim.lsp.buf.execute_command({
                    command = "gopls.organizeImports",
                    arguments = { vim.uri_from_bufnr(bufnr) },
                  })
                end,
              })
            end
          end,
        },
      },
    },
  },
}
