return {
  {
    'Mofiqul/vscode.nvim',
    lazy = false,
    priority = 1000,
    config = function()
      require('config.theme')
    end
  }
}
