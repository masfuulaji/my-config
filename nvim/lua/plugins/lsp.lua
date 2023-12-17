return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        templ = {},
        gopls = {},
        intelephense = {},
        dockerls = {},
        docker_compose_language_service = {},
        rust_analyzer = {},
      },
      setup = {},
    },
  },
}
