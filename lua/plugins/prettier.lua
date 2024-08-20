return {
  {
    'MunifTanjim/prettier.nvim',
    dependencies = {
      'neovim/nvim-lspconfig',
      'jose-elias-alvarez/null-ls.nvim'
    },
    config = function()
      require("config.prettier")
      require("config.null_ls")
    end
  }
}
