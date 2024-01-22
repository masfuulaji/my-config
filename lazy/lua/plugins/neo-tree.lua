return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    keys = {
      {
        "<leader>ee",
        function()
          require("neo-tree.command").execute({ action = "focus" })
        end,
        desc = "Show and/or focus Explorer",
      },
      {
        "<leader>eq",
        function()
          require("neo-tree.command").execute({ action = "close" })
        end,
        desc = "Close Explorer",
      },
    },
  },
}
