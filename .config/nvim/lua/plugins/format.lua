return {
  {
    "stevearc/conform.nvim",
    opts = function(_, opts)
      -- 1. Map the 'kdl' filetype to a custom formatter name
      opts.formatters_by_ft = opts.formatters_by_ft or {}
      opts.formatters_by_ft.kdl = { "kdlfmt" }

      -- 2. Define exactly how Neovim should talk to the 'kdlfmt' command
      opts.formatters = opts.formatters or {}
      opts.formatters.kdlfmt = {}
    end,
  },
}
