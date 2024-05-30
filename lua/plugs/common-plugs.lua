
require("gitblame").setup({
  delay = 500,
})

local prehook = require("ts_context_commentstring.integrations.comment_nvim").create_pre_hook()
require('Comment').setup {
  pre_hook = prehook,
  lazy = false,
}



require('ts_context_commentstring').setup {
  enable_autocmd = false,
  -- languages = {
  --   javascript = {
  --     __default = '// %s',
  --     jsx_element = '{/* %s */}',
  --     jsx_fragment = '{/* %s */}',
  --     jsx_attribute = '// %s',
  --     comment = '// %s',
  --   },
  -- },
}
