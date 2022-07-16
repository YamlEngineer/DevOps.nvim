-- example file i.e lua/custom/init.lua
vim.cmd [[ autocmd BufEnter * if &buftype != "terminal" | lcd %:p:h | endif ]]
-- load your globals, autocmds here or anything ._.

