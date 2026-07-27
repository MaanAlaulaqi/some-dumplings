return {
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },
  { "rose-pine/neovim", name = "rose-pine", priority = 1000 },
  { "folke/tokyonight.nvim", name = "tokyonight", priority = 1000 },

  {
    "zaldih/themery.nvim",
    lazy = false,
    -- Make sure it loads before LazyVim sets its default theme
    priority = 1001,
    config = function()
      require("themery").setup({
        -- 1. List all themes you want available in your picker menu
        themes = {
          "tokyonight",
          "catppuccin",
          "rose-pine",
          "habamax",
          "desert",

          "default",
          "blue",
          "darkblue",
          "delek",
          "desert",
          "elflord",
          "evening",
          "habamax",
          "industry",
          "koehler",
          "lunaperche",
          "morning",
          "murphy",
          "pablo",
          "peachpuff",
          "quiet",
          "retrobox",
          "ron",
          "shine",
          "slate",
          "torte",
          "zellner",
        },
        -- 2. Enables live visual switching as you scroll through options
        livePreview = true,
      })
    end,
    -- 3. Map it to a quick shortcut (e.g., <leader>th for "Themes")
    keys = {
      { "<leader>th", "<cmd>Themery<cr>", desc = "Themery Menu" },
    },
  },
}
