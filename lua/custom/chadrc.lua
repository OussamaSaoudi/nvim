---@type ChadrcConfig 
local M = {}
M.ui = {
  transparency = true,
  theme="catppuccin",
  changed_themes = {
    catppuccin = {
      base_16 = {
        base02 = "#494858"  --- Visual-mode color
      },
      base_30 = {
        -- variable color: #c7d1ff
        grey_fg = "#a5adcb", --- comment color
        grey = "#777595",  --- line number color 
        white = "#bfc6d4",    --- tab title color
      }
    }
  }
}
M.plugins = 'custom.plugins'
M.mappings = require "custom.mappings"

return M
