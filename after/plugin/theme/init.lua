require('config.theme')

local themes = { 'vscode', 'PaperColor' }

function ChooseRandomTheme()
  math.randomseed(os.time())

  local randomIndex = math.random(1, #themes)

  local randomTheme = themes[randomIndex]

  print("Using theme " .. randomTheme)

  vim.cmd.colorscheme(randomTheme)
end

ChooseRandomTheme()

vim.api.nvim_create_user_command('RandomTheme', ChooseRandomTheme, {})

