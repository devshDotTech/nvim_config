return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "cmake -S. -Bbuild -DCMAKE_BUILD_TYPE=Release && cmake --build build --config Release",
		},
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
		"jonarrien/telescope-cmdline.nvim",
	},
	keys = {
		{
			":",
			"<cmd>Telescope cmdline<cr>",
			desc = "cmdline",
		},
	},
	opts = {
		extensions = {
			cmdline = {
				picker = {
					layout_config = {
						width = 120,
						height = 25,
					},
				},
				mappings = {
					complete = "<Tab>",
					run_selection = "<C-CR>",
					run_input = "<CR>",
				},
			},
		},
	},
	config = function(_, opts)
		local telescope = require("telescope")
		require("telescope").setup(opts)
		local actions = require("telescope.actions")
		telescope.setup({
			defaults = {
				path_display = { "smart" },
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to previous result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-k>"] = actions.send_selected_to_qflist + actions.open_qflist, -- move to previous result
					},
				},
			},
		})

		require("telescope").load_extension("fzf")
		-- set keymaps
		local keymap = vim.keymap
		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "fuzzy find files in working dir" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "fuzzy find recent files" })
		keymap.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "find in string in working dir" })
		keymap.set(
			"n",
			"<leader>fc",
			"<cmd>Telescope grep_string<cr>",
			{ desc = "find string under cursor in working dir" }
		)
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "find todos in working dir" })
	end,
}
