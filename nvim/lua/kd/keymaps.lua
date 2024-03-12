vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })

-- Remap for dealing with word wrap
vim.keymap.set('n', 'k', "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
vim.keymap.set('n', 'j', "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })

-- See `:help telescope.builtin`
vim.keymap.set('n', '<leader>?', require('telescope.builtin').oldfiles, { desc = '[?] Find recently opened files' })
vim.keymap.set('n', '<leader><space>', require('telescope.builtin').buffers, { desc = '[ ] Find existing buffers' })
vim.keymap.set('n', '<leader>/', function()
  -- You can pass additional configuration to telescope to change theme, layout, etc.
  require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
    winblend = 10,
    previewer = false,
  })
end, { desc = '[/] Fuzzily search in current buffer' })

vim.keymap.set('n', '<leader>gf', require('telescope.builtin').git_files, { desc = 'Search [G]it [F]iles' })
vim.keymap.set('n', '<leader>sf', require('telescope.builtin').find_files, { desc = '[S]earch [F]iles' })
vim.keymap.set('n', '<leader>sh', require('telescope.builtin').help_tags, { desc = '[S]earch [H]elp' })
vim.keymap.set('n', '<leader>sw', require('telescope.builtin').grep_string, { desc = '[S]earch current [W]ord' })
vim.keymap.set('n', '<leader>sg', require('telescope.builtin').live_grep, { desc = '[S]earch by [G]rep' })
vim.keymap.set('n', '<leader>sd', require('telescope.builtin').diagnostics, { desc = '[S]earch [D]iagnostics' })
vim.keymap.set('n', '<leader>sr', require('telescope.builtin').resume, { desc = '[S]earch [R]esume' })

vim.keymap.set('n', '[d', vim.diagnostic.goto_prev, { desc = 'Go to previous diagnostic message' })
vim.keymap.set('n', ']d', vim.diagnostic.goto_next, { desc = 'Go to next diagnostic message' })
vim.keymap.set('n', '<leader>e', vim.diagnostic.open_float, { desc = 'Open floating diagnostic message' })
vim.keymap.set('n', '<leader>q', vim.diagnostic.setloclist, { desc = 'Open diagnostics list' })

vim.keymap.set('n', '<leader>f', vim.lsp.buf.format, { desc = '[F]ormat' })

-- Greatest remap sabi ni Prime
vim.keymap.set("x", "<leader>p", '"_dp', { noremap = true, silent = false })

-- Horizontally center every press of these keys
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")
vim.keymap.set("n", "*", "*zz")
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- Get the default mapping of <CR> in normal mode
local default_mapping = vim.api.nvim_replace_termcodes('<CR>', true, true, true)
-- Create a new mapping that combines the default action and the additional action
vim.api.nvim_set_keymap('n', '<CR>', default_mapping .. "zz", { noremap = true, silent = true })

-- next greatest remap ever : asbjornHaland
vim.keymap.set({ "n", "v" }, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- for oil.nvim to use ""
vim.keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Harpoon
local mark = require("harpoon.mark")
local ui = require("harpoon.ui")

vim.keymap.set("n", "<leader>a", mark.add_file, { desc = 'Harpoon Mark' })
vim.keymap.set("n", "<C-e>", ui.toggle_quick_menu)
vim.keymap.set("n", "<C-n>", ui.nav_next)
vim.keymap.set("n", "<C-p>", ui.nav_prev)

vim.keymap.set("n", "<leader>1", function() ui.nav_file(1) end, { desc = 'Harpoon Tab 1' })
vim.keymap.set("n", "<leader>2", function() ui.nav_file(2) end, { desc = 'Harpoon Tab 2' })
vim.keymap.set("n", "<leader>3", function() ui.nav_file(3) end, { desc = 'Harpoon Tab 3' })
vim.keymap.set("n", "<leader>4", function() ui.nav_file(4) end, { desc = 'Harpoon Tab 4' })

-- Copy all lines to clipboard
vim.keymap.set("n", "<leader>cc", ":%y+<CR>", { desc = '[C]opy to [C]lipboard' })
-- Select all then paste
vim.keymap.set("n", "<leader>cp", "gg0vG$p", { desc = 'Select All and [P]aste' })

-- Show all diagnostics on current line in floating window
vim.keymap.set('n', '<leader>ss', ':lua vim.diagnostic.open_float()<CR>',
  { desc = '[S]how Floating Diagnostic', noremap = true, silent = true }
)

-- set H and L to reach start of line or end of line
vim.keymap.set({'n', 'x', 'o'}, 'H', '^')
vim.keymap.set({'n', 'x', 'o'}, 'L', '$')

-- Don't leave visual mode when changing indent
vim.keymap.set('x', '>', '>gv', { noremap = true })
vim.keymap.set('x', '<', '<gv', { noremap = true })

-- Don't yank on put
vim.keymap.set('x', 'p', 'p<cmd>let @+=@0<CR><cmd>let @"=@0<CR>', { noremap = true, silent = true })

