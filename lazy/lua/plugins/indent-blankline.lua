local highlight = {
  "RainbowRed",
  "RainbowYellow",
  "RainbowBlue",
  "RainbowOrange",
  "RainbowGreen",
  "RainbowViolet",
  "RainbowCyan",
}

local hooks = require("ibl.hooks")
-- create the highlight groups in the highlight setup hook, so they are reset
-- every time the colorscheme changes

hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowRed", { fg = "#D08080" })
  vim.api.nvim_set_hl(0, "RainbowYellow", { fg = "#DACD94" })
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#7297B3" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D4B08E" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#A4BD8F" })
  vim.api.nvim_set_hl(0, "RainbowViolet", { fg = "#D09FCC" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#6FB3BF" })
end)

return {
  {
    "lukas-reineke/indent-blankline.nvim",
    opts = {
      indent = {
        char = "▎",
        highlight = highlight,
      },
    },
  },
}
