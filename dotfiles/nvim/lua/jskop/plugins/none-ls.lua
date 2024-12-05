return {
  "nvimtools/none-ls.nvim",
  event = { "BufReadPre", "BufNewFile" },
  dependencies = {
    "nvimtools/none-ls-extras.nvim"
  },
  config = function()
    require("jskop.plugins.config.null_ls")
  end
}
