require('vscode').setup({
    style = 'dark',
    transparent = false,
    italic_comments = true,
    underline_links = true,
    disable_nvimtree_bg = true,
})

local themes = { 'vscode', 'PaperColor' }

function ChooseRandomTheme()
  math.randomseed(os.time())

  local randomIndex = math.random(1, #themes)

  local randomTheme = themes[randomIndex]

  print("Using theme " .. randomTheme)

  vim.cmd.colorscheme(randomTheme)
end

ChooseRandomTheme()
