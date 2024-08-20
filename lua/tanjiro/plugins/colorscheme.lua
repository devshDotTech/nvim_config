return {
    { 
        "navarasu/onedark.nvim",
        priority = 1000,
        config = function()
          colors = {
            
          }
          -- vim.cmd("colorscheme onedark")
        end
    },
   {
    "folke/tokyonight.nvim",
    priority = 1000, -- make sure to load this before all the other start plugins
    config = function()
      local bg = "#1E222A"
      local bg_dark = "#1B1F27"
      local bg_highlight = "#252931"
      local bg_search = "#E5C07B"
      local bg_visual = "#3E4451"
      local fg = "#CBE0F0"
      local fg_dark = "#B4D0E9"
      local fg_gutter = "#627E97"
      local border = "#547998"

      require("tokyonight").setup({
        style = "night",
        on_colors = function(colors)
          colors.bg = bg
          colors.bg_dark = bg_dark
          colors.bg_float = bg_dark
          colors.bg_highlight = bg_highlight
          colors.bg_popup = bg_dark
          colors.bg_search = bg_search
          colors.bg_sidebar = bg_dark
          colors.bg_statusline = "#22262E"
          colors.bg_visual = bg_visual
          colors.border = border
          colors.fg = fg
          colors.fg_dark = fg_dark
          colors.fg_float = fg
          colors.fg_gutter = fg_gutter
          colors.fg_sidebar = fg_dark
        end,
      })
      -- load the colorscheme here
     vim.cmd([[colorscheme tokyonight]])
    end,
  },
}
