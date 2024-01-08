require("kd.options")
require("kd.lazy")
require("kd.which-key")
require("kd.keymaps")
require("kd.telescope")
require("kd.mason")
require("kd.treesitter")
require("kd.cmp")
require("kd.flutter-tools")

-- empty setup using defaults
require("nvim-tree").setup()
require("colorizer").setup()
require('neodev').setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
