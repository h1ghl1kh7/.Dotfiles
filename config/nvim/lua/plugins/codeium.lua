return {
	"Exafunction/codeium.vim",
	enabled = true,
	version = "1.8.37",
	event = "InsertEnter",
	config = function()
		vim.keymap.set("i", "<s-a-space>", function()
			return vim.fn["codeium#Accept"]()
		end, { expr = true, silent = true })
	end,
}
