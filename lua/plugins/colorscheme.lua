return {
  {
    "craftzdog/solarized-osaka.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        -- transparent = true,
      }
    end,
  },
  {
    "rebelot/kanagawa.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        -- transparent = false,
      }
    end,
  },
  {
    "neanias/everforest-nvim",
    version = false,
    lazy = false,
    priority = 1000,
    config = function()
      require("everforest").setup({
        background = "hard",
        -- transparent_background_level = 1,
      })
    end,
  },
  {
    "ellisonleao/gruvbox.nvim",
    lazy = true,
    priority = 1000,
    opts = function()
      return {
        -- transparent_mode = true,
      }
    end,
    config = function()
      require("notify").setup({
        -- background_colour = "#000000",
      })
    end,
  },
  {
    "felipeagc/fleet-theme-nvim",
  },
  {
    "Yazeed1s/oh-lucy.nvim",
  },
}
