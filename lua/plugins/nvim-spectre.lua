return {
  "windwp/nvim-spectre",
  keys = {
    { "<leader>sr", function() require("spectre").open() end, desc = "Search & Replace" },
  },
  config = function()
    require("spectre").setup({
      mapping = {
      },
    })
  end,
}
