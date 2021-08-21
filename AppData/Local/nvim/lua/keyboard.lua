local function load_keybindings()
	vim.g.mapleader = ' '

	vim.api.nvim_set_keymap('n', '<Leader>ff',
	[[<Cmd>lua require('telescope.builtin').find_files()<CR>]],
	{noremap = true, silent = true})
	vim.api.nvim_set_keymap('n', '<Leader>fg',
	[[<Cmd>lua require('telescope.builtin').live_grep()<CR>]],
	{noremap = true, silent = true})
	vim.api.nvim_set_keymap('n', '<Leader>fb',
	[[<Cmd>lua require('telescope.builtin').buffers()<CR>]],
	{noremap = true, silent = true})
	vim.api.nvim_set_keymap('n', '<Leader>fh',
	[[<Cmd>lua require('telescope.builtin').help_tags()<CR>]],
	{noremap = true, silent = true})
	vim.api.nvim_set_keymap('i', 'jk', '<Esc>', {silent = true})

end

load_keybindings()
