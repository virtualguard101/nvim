-- Session restore: keep filetype / highlights correct (auto-session :checkhealth)
vim.o.sessionoptions =
  "blank,buffers,curdir,folds,help,tabpages,winsize,winpos,terminal,localoptions"

-- Compatibility shim:
-- some plugins (e.g. todo-comments) use `vim.uv`, but older Neovim versions only expose `vim.loop`.
if vim.uv == nil and vim.loop and vim.loop.new_timer then
  vim.uv = vim.loop
end

-- Optional providers not used here; avoids :checkhealth noise and tiny startup cost
vim.g.loaded_node_provider = 0
vim.g.loaded_perl_provider = 0
vim.g.loaded_ruby_provider = 0
