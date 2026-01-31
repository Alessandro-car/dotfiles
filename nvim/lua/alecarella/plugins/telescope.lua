return {
    'nvim-telescope/telescope.nvim', version = '*',
    dependencies = {
	'nvim-telescope/telescope-ui-select.nvim',
        'nvim-lua/plenary.nvim',
        -- optional but recommended
        { 
		'nvim-telescope/telescope-fzf-native.nvim', 
		build = 'cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release -G Ninja && cmake --build build --config Release --target install', 
	},
    },
    lazy = false,
    config = function() 
	require('telescope').load_extension("fzf")
	require('telescope').load_extension("ui-select")
	
	local tb = require('telescope.builtin')
	vim.keymap.set("n", "<leader>ff", tb.find_files, { silent = true, desc = "Find files"})
	vim.keymap.set("n", "<leader>fg", tb.live_grep, { silent = true, desc = "Find in files"})
	vim.keymap.set("n", "<leader>ft", ":TodoTelescope<CR>", { silent = true, desc = "Find TODOs"})
    end
}
