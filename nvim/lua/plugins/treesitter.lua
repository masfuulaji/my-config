return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      highlight = { enable = true },
      indent = { enable = true },
      ensure_installed = {
        "templ",
        "go",
        "gomod",
        "gowork",
        "gosum",
        "html",
        "php",
        "javascript",
        "css",
      },
    },
  },
}
