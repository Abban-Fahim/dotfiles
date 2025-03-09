require('mason').setup({
    ui = {
        border = 'rounded'
    }
})

local lsp = require('lsp-zero').preset('minimal')
local cmp = require('cmp')
local cmp_action = require('lsp-zero').cmp_action()

lsp.on_attach(function(client, bufnr)
    lsp.default_keymaps({ buffer = bufnr })
    lsp.buffer_autoformat()
end)

lsp.set_sign_icons({
    error = '✘',
    warn = '▲',
    hint = '⚑',
    info = '»'
})

require 'lspconfig'.pylsp.setup {
    settings = {
        pylsp = {
            plugins = {
                pycodestyle = {
                    ignore = { 'E501' }
                }
            }
        },
        ltex = {
            language = "en-GB",
        }
    }
}

lsp.setup()

cmp.setup({
    preselect = cmp.PreselectMode.None,
    sources = {
        { name = "nvim_lsp" },
        { name = "vimtex" },
        { name = "luasnip" },
        { name = "nvim_lua" },
        { name = "buffer" },
        { name = "path" }
    },
    window = {
        -- completion = cmp.config.window.bordered(),
        documentation = cmp.config.window.bordered()
    },
    formatting = {
        fields = { 'menu', 'abbr' },
        format = function(entry, item)
            item.menu = ({
                nvim_lsp = 'λ',
                luasnip = '⋗',
                buffer = 'Ω',
                path = '',
                nvim_lua = 'Π',
            })[entry.source.name]
            return item
        end,
    },
    mapping = {
        ['<CR>'] = cmp.mapping.confirm({ select = true }),
        ['<C-e>'] = cmp_action.toggle_completion(),
        ['<Tab>'] = cmp_action.luasnip_supertab(),
        ['<S-Tab>'] = cmp_action.luasnip_shift_supertab(),
    },
    experimental = {
        ghost_text = true
    }
})
