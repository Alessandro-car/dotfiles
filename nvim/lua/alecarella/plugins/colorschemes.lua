return {
	"metalelf0/base16-black-metal-scheme",
	config = function()
		vim.o.background = "dark"
		vim.cmd.colorscheme("base16-black-metal-nile")
	end,
	priority = 1000
}
