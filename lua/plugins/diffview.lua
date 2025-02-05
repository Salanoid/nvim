return {
  "sindrets/diffview.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  keys = {
    { "<leader>dvo", "<cmd>diffviewopen<cr>", desc = "open diff view" },
    { "<leader>dvc", "<cmd>diffviewclose<cr>", desc = "close diff view" },
  },
}