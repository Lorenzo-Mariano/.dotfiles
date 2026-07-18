vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		vim.api.nvim_echo({
			{ "Failed to clone lazy.nvim:\n", "ErrorMsg" },
			{ out, "WarningMsg" },
			{ "\nPress any key to exit..." },
		}, true, {})
		vim.fn.getchar()
		os.exit(1)
	end
end
vim.opt.rtp:prepend(lazypath)

vim.g.mapleader = " "
vim.g.maplocalleader = "\\"

-- todo: modify blink somehow to de-prioritize emmet snippets in favor of tsgo and shi
local lean_mode = {
	require("plugins.utils.mason"),
	require("plugins.utils.mason-lspconfig"),
	require("plugins.utils.nvim-lint"),

	require("plugins.ui.telescope"),
	require("plugins.ui.minifiles"),

	require("plugins.editing.nvim-highlight-colors"),
	require("plugins.editing.blink"),
	require("plugins.editing.conform"),
	require("plugins.editing.nvim-autopairs"),

	require("plugins.themes"),
}

local full_fat = {
	lean_mode,
	require("plugins.utils.toggleterm"),
	require("plugins.utils.blame"),
	require("plugins.utils.git-conflict"),
	require("plugins.utils.gitsigns"),

	require("plugins.ui.lualine"),
	require("plugins.ui.neoscroll"),
	require("plugins.ui.noice"),
	require("plugins.ui.which-key"),

	require("plugins.editing.live-preview"),
	require("plugins.editing.nvim-ts-autotag"),
	require("plugins.editing.tree-sitter-manager"),
}

require("lazy").setup({
	spec = {
		lean_mode,
		-- full_fat,
	},
	install = { colorscheme = { "nord" } },
	-- automatically check for plugin updates
	checker = { enabled = true },
})

require("mappings")
require("options")

-- Choose your theme here.
vim.cmd.colorscheme("rose-pine-moon")
