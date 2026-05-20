require("flutter-tools").setup({
	lsp = {
		on_attach = require("kd.on-attach"),

		cmd = { "/Users/kurtdariel/.asdf/installs/flutter/3.32.5/bin/dart", "language-server" },
	},
})
