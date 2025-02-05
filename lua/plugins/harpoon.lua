return {
  "theprimeagen/harpoon",
  dependencies = { "nvim-lua/plenary.nvim" },
  config = function()
    require("harpoon").setup({
      global_settings = {
        save_on_toggle = true,
        enter_on_sendcmd = true,
      },
    })
    vim.keymap.set("n", "<leader>ha", require("harpoon.mark").add_file, { desc = "harpoon add file" })
    vim.keymap.set("n", "<leader>hh", require("harpoon.ui").toggle_quick_menu, { desc = "harpoon menu" })
    for i = 1, 4 do
      vim.keymap.set("n", "<leader>" .. i, function()
        require("harpoon.ui").nav_file(i)
      end, { desc = "navigate to harpoon file " .. i })
    end
  end,
}