require("config.options")
require("config.lazy")
require("config.keymaps")
require("config.telescope")
require("config.mason")
require("config.treesitter")
require("config.which-key")
require("config.cmp")

-- empty setup using defaults
require("nvim-tree").setup()
require("colorizer").setup()
require("flutter-tools").setup({})
require('neodev').setup()
