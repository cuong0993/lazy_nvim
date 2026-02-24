local lspconfig = require("lspconfig")
local configs = require("lspconfig.configs")

if not configs.ty then
  configs.ty = {
    default_config = {
      cmd = { "ty", "server" },
      filetypes = { "python" },
      root_dir = lspconfig.util.root_pattern(
        "pyproject.toml",
        "setup.py",
        "setup.cfg",
        "requirements.txt",
        "Pipfile",
        ".git"
      ),
      single_file_support = true,
      settings = {},
    },
    docs = {
      description = "Astral's ty language server",
    },
  }
end

return {
  "neovim/nvim-lspconfig",
  opts = {
    servers = {
      ty = {},
      pyright = { enabled = false },
      basedpyright = { enabled = false },
    },
  },
}