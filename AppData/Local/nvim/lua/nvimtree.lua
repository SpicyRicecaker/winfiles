function load ()
	vim.api.nvim_set_keymap("n", "<C-n>", ":NvimTreeToggle <CR>", {noremap = true, silent = true})
end

load()
