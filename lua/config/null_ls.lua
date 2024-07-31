local null_ls = require("null-ls")

null_ls.setup({
  on_attach = function(client, bufnr)
    if client.supports_method("textDocument/formatting") then
      vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { desc = 'Format current buffer with LSP' })
    end

    if client.supports_method("textDocument/rangeFormatting") then
      vim.api.nvim_buf_create_user_command(bufnr, 'Format', function(_)
        vim.lsp.buf.format({ bufnr = vim.api.nvim_get_current_buf() })
      end, { desc = 'Format current buffer with LSP' })
    end
  end,
})
