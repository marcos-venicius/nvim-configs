return {
  {
    "marcos-venicius/tms.nvim",
    name = "tms",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("tms").setup({
        "kanagawa",
        "vscode",
        "rose-pine",
        "catppuccin-mocha"
      })
    end
  }
}
