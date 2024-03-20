-- [[ Configure nvim-cmp ]]
-- See `:help cmp`
local cmp = require 'cmp'

cmp.setup {
  completion = {
    completeopt = 'menu,menuone,noinsert',
  },
  mapping = cmp.mapping.preset.insert {
    ['<C-k>'] = cmp.mapping.select_prev_item({behavior = 'select'}),
    ['<C-j>'] = cmp.mapping.select_next_item({behavior = 'select'}),
    ['<enter>'] = cmp.mapping.confirm({select = false}),
  },
  sources = {
    { name = 'nvim_lsp' },
    { name = 'lua_ls' },
    { name = 'path' },
  },
}

-- The line beneath this is called `modeline`. See `:help modeline`
