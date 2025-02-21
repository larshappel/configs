require("lspconfig").intelephense.setup({
  settings = {
    intelephense = {
      files = {
        maxSize = 5000000, -- Increase file size limit
      },
      completion = {
        fullyQualifiedGlobal = true, -- Show fully qualified class names
        caseSensitive = false,
      },
      format = {
        enable = true, -- Enable auto-formatting
      },
      diagnostics = {
        enable = true, -- Enable error checking
      },
    },
  },
})
