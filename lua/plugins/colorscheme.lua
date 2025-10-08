return {
  -- добавляем плагин с темой
  { "catppuccin/nvim" },
  --{ "everviolet/nvim" },
  --gruvbox-material настраиваем LazyVim, чтобы использовать эту тему по умолчанию
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "catppuccin",
      --colorscheme = "evergarden",
    },
  },
}
