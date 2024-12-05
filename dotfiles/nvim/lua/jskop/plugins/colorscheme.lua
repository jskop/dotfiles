local git_repo = "savq/melange-nvim"
local scheme = "melange"
return {
  git_repo,
  version = false,
  lazy = false,
  priority = 1000,
  config = function()
    --require(scheme).setup()
    vim.cmd("colorscheme " .. scheme)
  end,
}
