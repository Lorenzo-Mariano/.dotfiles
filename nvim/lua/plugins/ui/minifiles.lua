return {
	"nvim-mini/mini.files",
	version = "*",
	config = function()
		require("mini.files").setup({
			windows = {
				preview = true,
				width_focus = 20,
				width_nofocus = 20,
				width_preview = 85,
			},
		})
		vim.api.nvim_set_keymap("n", "<C-b>", ":lua MiniFiles.open()<CR>", { noremap = true, silent = false })

		local map_split = function(buf_id, lhs, direction)
			local rhs = function()
				local cur_target = MiniFiles.get_explorer_state().target_window
				local new_target = vim.api.nvim_win_call(cur_target, function()
					vim.cmd(direction .. " split")
					return vim.api.nvim_get_current_win()
				end)

				MiniFiles.set_target_window(new_target)
				MiniFiles.go_in()
			end

			local desc = "Split " .. direction
			vim.keymap.set("n", lhs, rhs, { buffer = buf_id, desc = desc })
		end

		vim.api.nvim_create_autocmd("User", {
			pattern = "MiniFilesBufferCreate",
			callback = function(args)
				local buf_id = args.data.buf_id
				-- Tweak keys to your liking
				map_split(buf_id, "<C-x>", "belowright horizontal")
				map_split(buf_id, "<C-v>", "belowright vertical")
			end,
		})
	end,
}
