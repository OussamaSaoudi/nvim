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
        grey_fg = "#c7d1ff", --- comment color
        grey = "#777595",  --- line number color 
        white = "#bfc6d4",    --- tab title color
      }
    }
  }
}
M.plugins = 'custom.plugins'
return M
