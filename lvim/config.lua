-- Read the docs: https://www.lunarvim.org/docs/configuration
-- Video Tutorials: https://www.youtube.com/watch?v=sFA9kX-Ud_c&list=PLhoH5vyxr6QqGu0i7tt_XoVK9v-KvZ3m6
-- Forum: https://www.reddit.com/r/lunarvim/
-- Discord: https://discord.com/invite/Xb9B4Ny
lvim.transparent_window = true

lvim.plugins = {
  {
    "Exafunction/codeium.vim",
    event = "BufEnter",
    config = function()
      -- Change '<C-g>' here to any keycode you like.
      vim.keymap.set('i', '<C-g>', function() return vim.fn['codeium#Accept']() end, { expr = true, silent = true })
      vim.keymap.set('i', '<c-;>', function() return vim.fn['codeium#CycleCompletions'](1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<c-,>', function() return vim.fn['codeium#CycleCompletions'](-1) end,
        { expr = true, silent = true })
      vim.keymap.set('i', '<C-x>', function() return vim.fn['codeium#Clear']() end, { expr = true, silent = true })
    end
  },
  {
    "alexghergh/nvim-tmux-navigation",
    config = function()
      local nvim_tmux_nav = require("nvim-tmux-navigation")

      nvim_tmux_nav.setup({
        disable_when_zoomed = true, -- defaults to false
      })
    end,
  },
  {
    "HiPhish/nvim-ts-rainbow2"
  }
}

lvim.builtin.treesitter.rainbow.enable = true

lvim.keys.normal_mode["<C-h>"] = { "<Cmd>NvimTmuxNavigateLeft<CR>", desc = "Tmux Navigate Left" }
lvim.keys.normal_mode["<C-l>"] = { "<Cmd>NvimTmuxNavigateRight<CR>", desc = "Tmux Navigate Right" }
lvim.keys.normal_mode["<C-j>"] = { "<Cmd>NvimTmuxNavigateDown<CR>", desc = "Tmux Navigate Down" }
lvim.keys.normal_mode["<C-k>"] = { "<Cmd>NvimTmuxNavigateUp<CR>", desc = "Tmux Navigate Up" }
