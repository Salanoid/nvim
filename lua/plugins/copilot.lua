return {
  "github/copilot.vim",
  event = "insertenter",
  config = function()
    vim.g.copilot_no_tab_map = true
    vim.api.nvim_set_keymap("i", "<c-b>", 'copilot#accept("<cr>")', { silent = true, expr = true })
  end,
}