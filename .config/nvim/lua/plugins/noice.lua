return { {
  "folke/noice.nvim",
  dependencies = {
    "rcarriga/nvim-notify",
  },
  opts = {
    presets = {
      lsp_doc_border = true
    },
    routes = {
      filter = {
        event = "notify",
        find = "No information available"
      },
      opts = { skip = true }
    }
  }
} }
