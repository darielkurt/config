require("flutter-tools").setup({
	lsp = {
		on_attach = require("kd.on-attach")
	},
	debugger = {
		enabled = true,
		run_via_dap = true,
		exception_breakpoints = {},
		register_configurations = function(_)
			require("dap").configurations.dart = {}
			require("dap.ext.vscode").load_launchjs()
		end,
	},
})
