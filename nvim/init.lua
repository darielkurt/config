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
require("treesitter-context")
require("nvim-tree").setup()
require("colorizer").setup()
require('neodev').setup({
  library = { plugins = { "nvim-dap-ui" }, types = true },
})
require('nvim-autopairs').setup({
  disable_filetype = { "TelescopePrompt" , "vim" },
})
require('highlight-undo').setup({
  duration = 300,
  undo = {
    hlgroup = 'HighlightUndo',
    mode = 'n',
    lhs = 'u',
    map = 'undo',
    opts = {}
  },
  redo = {
    hlgroup = 'HighlightUndo',
    mode = 'n',
    lhs = '<C-r>',
    map = 'redo',
    opts = {}
  },
  highlight_for_count = true,
})
