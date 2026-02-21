return {
  {
    "mason-org/mason.nvim",
    opts = { ensure_installed = { "bash-language-server" } },
      automatic_enable = {
        exclude = {
            "go",
            "composer",
            "php",
            "julia",
            "java"
        }
    }
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        bashls = {
          filetypes = { "bash", "sh", "zsh" },
        },
      },
    },
  },
}
