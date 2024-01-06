require("flutter-tools").setup({
	lsp = {
		on_attach = require("kd.on-attach")
	},
	debugger = {   -- integrate with nvim dap + install dart code debugger
		enabled = true,
		run_via_dap = false, -- use dap instead of a plenary job to run flutter apps
		-- if empty dap will not stop on any exceptions, otherwise it will stop on those specified
		-- see |:help dap.set_exception_breakpoints()| for more info
		exception_breakpoints = {},
		register_configurations = function(_)
			require("dap").configurations.dart = {
				{
				type = "dart",
				request = "launch",
				name = "Launch Dart Program",
				-- The nvim-dap plugin populates this variable with the filename of the current buffer
				program = "${file}",
				-- The nvim-dap plugin populates this variable with the editor's current working directory
				cwd = "${workspaceFolder}",
				args = { "--help" }, -- Note for Dart apps this is args, for Flutter apps toolArgs
				}
			}
			require("dap").adapters.dart = {
				type = "executable",
				command = "dart",
				-- This command was introduced upstream in https://github.com/dart-lang/sdk/commit/b68ccc9a
				args = { "debug_adapter" }
			}
			require("dap.ext.vscode").load_launchjs()
		end,
		-- register_configurations = function(paths)
		-- 	require("dap").configurations.dart = {
		-- 		configurations =
		-- 		{
		-- 			name = "wv-mobile-v2-gckc",
		-- 			request = "launch",
		-- 			type = "dart"
		-- 		},
		-- 	}
		-- end,
	},
})
