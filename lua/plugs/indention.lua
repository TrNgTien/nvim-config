local indention = require("ibl")
local hooks = require "ibl.hooks"

local highlight = {
  "RainbowBlue",
  "RainbowGreen",
  "RainbowCyan",
  "RainbowGreenDark",
}

local whitespace = {
  highlight = highlight,
  remove_blankline_trail = false,
}

local scope = {
  highlight = highlight
}

vim.g.rainbow_delimiters = { highlight = highlight }
hooks.register(hooks.type.HIGHLIGHT_SETUP, function()
  vim.api.nvim_set_hl(0, "RainbowBlue", { fg = "#61AFEF" })
  vim.api.nvim_set_hl(0, "RainbowGreen", { fg = "#98C379" })
  vim.api.nvim_set_hl(0, "RainbowGreenDark", { fg = "#4a8885" })
  vim.api.nvim_set_hl(0, "RainbowCyan", { fg = "#56B6C2" })
  vim.api.nvim_set_hl(0, "RainbowOrange", { fg = "#D19A66" })
end)

hooks.register(hooks.type.SCOPE_HIGHLIGHT, hooks.builtin.scope_highlight_from_extmark)

indention.setup {
  scope = scope,
  exclude = { filetypes = { "dashboard" } },
  indent = {
    char = "|",
    highlight = highlight,
    smart_indent_cap = true,
  },
}
