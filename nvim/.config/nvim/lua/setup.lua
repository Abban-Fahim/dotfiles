require('Comment').setup()

require("nvim-tree").setup()

require("fidget").setup {}

require("telescope").setup({})

require("ibl").setup {}

require("nnn").setup({
    picker = {
        cmd = "tmux new-session nnn -Pp"
    },
})

vim.opt.termguicolors = true

require("catppuccin").setup({
    integrations = {
        barbar = true,
        mason = true,
        fidget = true
    },
    transparent_background = true,
})

-- Statusline config (lightline.vim ✨)

vim.cmd([[
let g:lightline = {'colorscheme': 'catppuccin'}

let g:lightline.active = {
\ 'left': [ [ 'mode', 'paste' ], [ 'readonly', 'filename', 'modified' ] ],
    \ 'right': [ [ 'lineinfo' ], [ 'percent' ], [ 'fileformat', 'fileencoding', 'filetype' ] ]
    \ }
let g:lightline.inactive = {
    \ 'left': [ [ 'filename' ] ],
    \ 'right': [ [ 'lineinfo' ], [ 'percent' ] ]
    \ }
let g:lightline.tabline = {
    \ 'left': [ [ 'tabs' ] ],
    \ 'right': [ [ 'close' ] ]
    \ }
let g:lightline.component = {
    \ 'readonly': ''
    \ }
let g:lightline.mode_map = {
    \ 'i': '',
    \ 'n': '󰥹',
    \ 'v': '',
    \ 'R': '󰧼'
    \ }
]])

-- LuaSnip config

vim.cmd [[
" Use Tab to expand and jump through snippets
imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>'
smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

" Use Shift-Tab to jump backwards through snippets
imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]

require("luasnip").log.set_loglevel("debug")
require("luasnip.loaders.from_lua").load({ paths = ".\\snippets" })
require("luasnip").config.set_config({
    update_events = 'TextChanged,TextChangedI'
})

vim.g.vimtex_view_method = 'zathura'
