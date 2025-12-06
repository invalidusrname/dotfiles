return {
  {
    "williamboman/mason.nvim",
    opts = {
      -- log_level = vim.log.levels.DEBUG,
      ensure_installed = {
        "ruby-lsp",
        "rubocop",
        "shellcheck",
        "shfmt",
        "stylua",
      },
    },
  },
  {
    "williamboman/mason-lspconfig.nvim",
    "neovim/nvim-lspconfig",
  },
}
