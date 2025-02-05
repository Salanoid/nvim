return {
  "copilotc-nvim/copilotchat.nvim",
  dependencies = { "github/copilot.vim" },
  opts = {
    show_help = "yes",
    question_header = "## user",
    answer_header = "## copilot",
  },
  keys = {
    { "<leader>cc", "<cmd>copilotchattoggle<cr>", desc = "toggle copilot chat" },
    { "<leader>cr", "<cmd>copilotchatreview<cr>", desc = "code review with copilot" },
    { "<leader>cp", "<cmd>copilotchatprompt<cr>", desc = "copilot prompt" },
  },
}