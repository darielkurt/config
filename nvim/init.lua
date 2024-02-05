require("kd.options")
require("kd.lazy")
require("kd.which-key")
require("kd.keymaps")
require("kd.telescope")
require("kd.mason")
require("kd.treesitter")
require("kd.cmp")
require("kd.flutter-tools")
require("kd.nvim-autopairs")
require("kd.highlight-undo")

-- empty setup using defaults
require('neodev').setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})
