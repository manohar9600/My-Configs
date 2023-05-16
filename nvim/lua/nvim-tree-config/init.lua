vim.g.nvim_tree_width = 25
vim.g.nvim_tree_side = 'right'
vim.api.nvim_set_keymap("n", "<C-b>", ":NvimTreeFocus<cr>", {silent = true, noremap = true})
vim.api.nvim_set_keymap("n", "<C-w>", ":NvimTreeToggle<cr>", {silent = true, noremap = true})

--- for auto close after vim exit
vim.api.nvim_create_autocmd("BufEnter", {
  nested = true,
  callback = function()
    if #vim.api.nvim_list_wins() == 1 and require("nvim-tree.utils").is_nvim_tree_buf() then
      vim.cmd "quit"
    end
  end
})

require("nvim-tree").setup({
  view = {
    width = 30,
    side = "right"
  },
})

