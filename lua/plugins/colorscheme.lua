return {
  -- добавляем плагин с темой
  --{ "catppuccin/nvim" },
  { "everviolet/nvim" },
  -- настраиваем LazyVim, чтобы использовать эту тему по умолчанию
  {
    "LazyVim/LazyVim",
    opts = {
      --colorscheme = "gruvbox-material",
      --colorscheme = "catppuccin",
      colorscheme = "evergarden",
    },
  },
}
