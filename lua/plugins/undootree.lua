return {
  "jiaoshijie/undotree",
  dependencies = "nvim-lua/plenary.nvim",
  config = true,
  keys = { -- Load the plugin only when using its keybinding:
    { "<leader>uu", "<cmd>lua require('undotree').toggle()<cr>" },
  },
}
