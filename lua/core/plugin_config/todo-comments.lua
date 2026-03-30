local ok, todo = pcall(require, "todo-comments")
if ok then
  todo.setup()
  vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { noremap = true, silent = true })
end

