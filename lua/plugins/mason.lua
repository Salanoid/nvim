return {
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "stylua",
        "shellcheck",
        "shfmt",
        "elixir-ls",
        "rust-analyzer",
        "typescript-language-server",
      },
    },
  },
}
