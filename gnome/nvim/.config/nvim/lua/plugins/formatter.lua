return {
  "mhartington/formatter.nvim",
  version = "*",
  config = function(_)
    require("formatter").setup({
      logging = true,
      -- Set the log level
      log_level = vim.log.levels.ERROR,
      filetype = {
        lua = {
          require("formatter.filetypes.lua").stylua,
        },
      },
    })
  end,
}
