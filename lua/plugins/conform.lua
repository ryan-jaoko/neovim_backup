return {
  {
    "stevearc/conform.nvim",
    opts = {
      formatters_by_ft = {
        -- Existing Python and Shell
        python = { "isort", "black" },
        sh = { "shfmt" },

        -- JavaScript/TypeScript: Try Biome first, fall back to Prettier
        javascript = { "biome", "prettier", stop_after_first = true },
        typescript = { "biome", "prettier", stop_after_first = true },
        javascriptreact = { "biome", "prettier", stop_after_first = true },
        typescriptreact = { "biome", "prettier", stop_after_first = true },

        -- Other Web Dev formats (Biome doesn't support all yet)
        json = { "biome", "prettier", stop_after_first = true },
        html = { "prettier" },
        css = { "prettier" },
        markdown = { "prettier" },

        -- Rust
        rust = { "rustfmt" },

        -- Lua (Highly recommended for your own config)
        lua = { "stylua" },
      },
      -- Enable format-on-save for a smooth workflow
      format_on_save = {
        timeout_ms = 500,
        lsp_format = "fallback",
      },
    },
  },
}

