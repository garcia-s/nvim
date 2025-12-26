return {
  "rebelot/kanagawa.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    colors = {
      theme = {
        all = {
          ui = {
            bg_gutter = "none", -- Makes the sign column background transparent
          }
        },
        wave = {
          ui = {
            bg = "none", -- Custom background for the 'wave' theme
          }
        },
      }
    },
    -- Alternatively, use overrides for high-level highlight groups
    overrides = function(colors)
      return {
        Normal = { bg = "none" }, -- Main editor background
        NormalFloat = { bg = "none" }, -- Floating windows (set to "none" for transparency)
        FloatBorder = { bg = "none" },
      }
    end,
  },
  config = function(_, opts)
    require("kanagawa").setup(opts)
    vim.cmd("colorscheme kanagawa")
  end,
}
