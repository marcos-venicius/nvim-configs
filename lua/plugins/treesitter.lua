return {
  'nvim-treesitter/nvim-treesitter',
  config = function ()
    vim.defer_fn(function()
      require('nvim-treesitter.configs').setup {
        ensure_installed = { 'c', 'cpp', 'go', 'lua', 'python', 'rust', 'tsx', 'javascript', 'typescript', 'vimdoc', 'vim', 'bash' },
        auto_install = true,
        highlight = { enable = true },
        indent = { enable = true },
        incremental_selection = {
          enable = false,
        },
        textobjects = {
          move = {
            enable = true,
            set_jumps = true,
            goto_next_start = {
              [']m'] = '@function.outer',
            },
            goto_previous_start = {
              ['[m'] = '@function.outer',
            },
          }
        }
      }
    end, 0)
  end,
  dependencies = {
    'nvim-treesitter/nvim-treesitter-textobjects',
  },
  build = ':TSUpdate',
}
