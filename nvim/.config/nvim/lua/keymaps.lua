-- Remap leader key
vim.g.mapleader = "`"

-- vim.keymap.set({ 'n', 'i' }, '<leader>sp', '<Cmd>setlocal spell spelllang=en_uk<CR>')

-- Cycling though tabs
vim.keymap.set({ 'n', 'i' }, '<C-j>', '<Cmd>bprev<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-k>', '<Cmd>bnext<CR>')

-- nvim-tree shortcuts
vim.keymap.set({ 'n', 'i' }, '<A-z>', '<Cmd>NvimTreeToggle<CR>')
-- nnn shortcuts
-- vim.keymap.set({ 'n', 'i' }, '<C-n>', '<Cmd>NnnExplorer<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-o>', '<Cmd>NnnPicker<CR>')

-- Closing and saving buffers
vim.keymap.set({ 'n', 'i' }, '<C-s>', '<Cmd>w<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-Q>', '<Cmd>q<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-w>', '<Cmd>BufferClose<CR>')

-- Reloads config file
vim.keymap.set({ 'n' }, '<C-l>', '<Cmd>so ~/.config/nvim/init.vim<CR>')

-- Reloads state of directory
vim.keymap.set({ 'n', 'i' }, '<Leader>s', '<Cmd>so Session.vim<CR>')

-- Moves current line up or down
vim.keymap.set({ 'n', 'i' }, '<C-Up>', '<Cmd>m-2<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-Down>', '<Cmd>m+<CR>')

-- Telescope keybinds
-- vim.keymap.set({ 'n', 'i' }, '<C-o>', '<Cmd>Telescope find_files<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-P>', '<Cmd>Telescope command_history<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-G>', '<Cmd>Telescope highlights<CR>')
vim.keymap.set({ 'n', 'i' }, '<C-H>', '<Cmd>Telescope grep_string<CR>')

-- Vim-sneak keybinds
vim.keymap.set({ 'n' }, 'f', '<Plug>Sneak_s')
vim.keymap.set({ 'n' }, 'F', '<Plug>Sneak_Sap f <Plug>Sneak_s')

-- Search n replace keybinds
vim.keymap.set({ 'n', 'i' }, '<C-/>', '<Cmd>nohlsearch<CR>')

-- Deleting text keybinds
vim.keymap.set({ 'n', 'v' }, 'x', '\"_x\"')
vim.keymap.set({ 'n', 'v' }, 'd', '\"_d')
vim.keymap.set({ 'n', 'v' }, 'D', '\"_D')

-- Vimtex compile
vim.keymap.set({ 'n' }, '<leader>ll', '<Cmd>VimtexCompile<CR>')
vim.keymap.set({ 'n' }, '<leader>ls', '<Cmd>VimtexStop<CR>')

-- Relaoad snippets
vim.keymap.set({ 'n' }, '<Leader>L',
    '<Cmd>lua require("luasnip.loaders.from_lua").load({paths = "~/AppData/Local/nvim/snippets"})<CR>')

-- Select all
vim.keymap.set({ 'n' }, '<C-a>', 'ggVG')
