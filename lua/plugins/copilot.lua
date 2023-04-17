return {
  { 'github/copilot.vim', config = function ()
    vim.keymap.set("i", "<M-j>", "<Plug>(copilot-next)", { noremap = false })
    vim.keymap.set("i", "<M-k>", "<Plug>(copilot-previous)", { noremap = false })
    vim.keymap.set("i", "<M-l>", "<Plug>(copilot-suggest)", { noremap = false })

    vim.cmd([[
      imap <silent><script><expr> <M-p> copilot#Accept("\<CR>")
    ]])
  end }
}

