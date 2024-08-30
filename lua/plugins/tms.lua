return {
  {
    "marcos-venicius/tms.nvim",
    name = "tms",
    dependencies = { 'nvim-lua/plenary.nvim' },
    config = function()
      require("tms").setup({
        "vscode",
        "rose-pine",
        "catppuccin",
        "catppuccin-frappe",
        "catppuccin-macchiato",
        "catppuccin-mocha"
      })
    end
  }
}
