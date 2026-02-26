return {
  "stevearc/conform.nvim",
  opts = {
    formatters_by_ft = {
      sh = { "shfmt" },
      zsh = { "shfmt" },
      bash = { "shfmt" },
      javascript = { "oxfmt" },
      javascriptreact = { "oxfmt" },
      typescript = { "oxfmt" },
      typescriptreact = { "oxfmt" },
      sql = { "sqlfluff" },
      html = { "oxfmt" },
      json = { "oxfmt" },
      jsonc = { "oxfmt" },
      yaml = { "oxfmt" },
      toml = { "oxfmt" },
      xml = { "xmlformat" },
    },
    formatters = {
      oxfmt = {
        command = "oxfmt",
        args = { "$FILENAME" },
        stdin = false,
      },
    },
  },
}
