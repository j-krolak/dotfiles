return {
  {
    "mason-org/mason-lspconfig.nvim",
    dependencies = {
      {
        "mason-org/mason.nvim",
        opts = {}
      },
      "neovim/nvim-lspconfig"
    },
    config = function()
      require("mason-lspconfig").setup()

      -- Format on save
      vim.api.nvim_create_autocmd("LspAttach", {
        callback = function(args)
          local client = vim.lsp.get_client_by_id(args.data.client_id)
          if not client then return end

          if client.supports_method("textDocument/formatting") then
            vim.api.nvim_create_autocmd("BufWritePre", {
              callback = function()
                vim.lsp.buf.format({ bufnr = args.buf, client_id = client.id })
              end
            })
          end
        end
      })
    end
  }
}
