return {
  -- добавляем плагин с темой
  { "neanias/everforest-nvim" },

  -- настраиваем LazyVim, чтобы использовать эту тему по умолчанию
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "everforest",
    },
  },
}

