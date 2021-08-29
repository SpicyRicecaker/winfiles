local function load()
	-- Add commands for adding comments in insert mode
	vim.api.nvim_set_keymap('i', '<C-k>', "// ", {silent = true, noremap = true})
	-- Rust analyzer comment
	vim.api.nvim_set_keymap('i', '<C-b>', '/// ', {silent = true, noremap = true})

	-- TODO make above insert mode comments buffer sensitive (e.g. -- for lua, // for json, etc.)
	-- Command to auto add comment after
	vim.api.nvim_set_keymap('n', '<C-k>', "O// ", {silent = true, noremap = true})
	vim.api.nvim_set_keymap('n', '<C-j>', "o// ", {silent = true, noremap = true})
end

load()
