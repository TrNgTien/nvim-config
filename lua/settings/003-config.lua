---------------------------------------------------------
--LuaLine
require('lualine').setup({
  options = {
    icons_enabled = true,
    theme = 'seoul256',
    component_separators = { left = '|', right = '|' },
    section_separators = { left = '', right = '' },
    disabled_filetypes = { statusline = {}, winbar = {}, },
    ignore_focus = {},
    always_divide_middle = true,
    globalstatus = false,
    refresh = { statusline = 1000, tabline = 1000, winbar = 1000, }
  },
  sections = {
    lualine_a = {'mode'},
    lualine_b = {'branch', 'diff', 'diagnostics'},
    lualine_c = {'filename'},
    lualine_x = {'encoding', 'fileformat', 'filetype'},
    lualine_y = {'progress'},
    lualine_z = {'location'}
  },
  inactive_sections = {
    lualine_a = {},
    lualine_b = {},
    lualine_c = {'filename'},
    lualine_x = {'location'},
    lualine_y = {},
    lualine_z = {}
  },
  tabline = {},
  winbar = {},
  inactive_winbar = {},
  extensions = {}
})

---------------------------------------------------------
--Comment
require('Comment').setup()

---------------------------------------------------------
--NvimTree
require('nvim-tree').setup({
  disable_netrw = true,
  hijack_netrw = true,
  -- open_on_setup = false,
  open_on_tab = false,
  update_cwd = true,
  update_focused_file = {
    enable = true,
    update_cwd = true,
    ignore_list = {},
  },
  renderer = {
    icons = {
      webdev_colors = true,
      git_placement = "before",
      modified_placement = "after",
      padding = " ",
      symlink_arrow = " ➛ ",
      show = {
        file = true,
        folder = true,
        folder_arrow = true,
        git = true,
        modified = true,
      },
    },
    highlight_opened_files = "none",
    highlight_modified = "none",
    indent_markers = {
      enable = false,
      inline_arrows = true,
      icons = {
        corner = "└",
        edge = "│",
        item = "│",
        bottom = "─",
        none = " ",
      },
    },
  },
  git = { enable = false, ignore = false, timeout = 400 },
  view = { cursorline = true },
  diagnostics = {
    enable = true,
    show_on_dirs = false,
    show_on_open_dirs = false,
    debounce_delay = 20,
    icons = {
      hint = "",
      info = "",
      warning = "",
      error = "✖",
    },
  },
})

local function openNvimTree()
  require("nvim-tree.api").tree.open()
end

-- indention
vim.opt.list = true
vim.opt.listchars:append "space:⋅"

require("indent_blankline").setup {
  space_char_blankline = " ",
}

vim.api.nvim_create_autocmd({ "VimEnter" }, { callback = openNvimTree })

---------------------------------------------------------
--NullLS
local nullLs = require('null-ls')
local formatting = nullLs.builtins.formatting
nullLs.setup({
  sources = {
    formatting.eslint,
    formatting.prettier,
    formatting.stylelint,
    formatting.fixjson,
    formatting.mdformat,
    formatting.sqlformat,
    formatting.dart_format,
  }
})

---------------------------------------------------------
--Telescope
local telescope = require('telescope')
telescope.load_extension('media_files')
telescope.setup {
  extensions = {
    media_files = {
      file_types = { 'png', 'jpg', 'jpeg', 'webp', 'pdf' },
      find_cmd = 'rg'
    }
  }
}

--formatter
-- Utilities for creating configurations
-- local util = require "formatter.util"
--
-- -- Provides the Format, FormatWrite, FormatLock, and FormatWriteLock commands
-- require("formatter").setup {
--   -- Enable or disable logging
--   logging = true,
--   -- Set the log level
--   log_level = vim.log.levels.WARN,
--   -- All formatter configurations are opt-in
--   filetype = {
--     -- Formatter configurations for filetype "lua" go here
--     -- and will be executed in order
--     lua = {
--       -- "formatter.filetypes.lua" defines default configurations for the
--       -- "lua" filetype
--       require("formatter.filetypes.lua").stylua,
--
--       -- You can also define your own configuration
--       function()
--         -- Supports conditional formatting
--         if util.get_current_buffer_file_name() == "special.lua" then
--           return nil
--         end
--
--         -- Full specification of configurations is down below and in Vim help
--         -- files
--         return {
--           exe = "stylua",
--           args = {
--             "--search-parent-directories",
--             "--stdin-filepath",
--             util.escape_path(util.get_current_buffer_file_path()),
--             "--",
--             "-",
--           },
--           stdin = true,
--         }
--       end
--     },
--
--     -- Use the special "*" filetype for defining formatter configurations on
--     -- any filetype
--     ["*"] = {
--       -- "formatter.filetypes.any" defines default configurations for any
--       -- filetype
--       require("formatter.filetypes.any").remove_trailing_whitespace
--     }
--   }
-- }
require('gitblame').setup {
    delay = 500
}

---------------------------------------------------------
--Keymaps
vim.cmd [[
  nmap <C-s>                :w<CR>
  nmap <C-q>                :qa<CR>
  nmap <C-z>                :undo<CR>
  nmap <C-y>                :redo<CR>
  nmap <C-h>                <C-w>h
  nmap <C-j>                <C-w>j
  nmap <C-l>                <C-w>l
  nmap <C-k>                <C-w>k
  nmap <leader>ts           :Telescope<CR>
  nmap <C-f>                :Telescope current_buffer_fuzzy_find<CR>
  nmap <C-p>                :Telescope git_files<CR>
  nmap <C-r>                :Telescope find_files<CR>
  nmap <leader>ff           :Telescope live_grep<CR>
  nmap <leader>fs           :Telescope grep_string<CR>
  nmap <leader>gc           :Telescope git_commits<CR>
  nmap <leader>gst          :Telescope git_status<CR>
  nmap <leader>gb           :Telescope git_branches<CR>
  nmap <C-b>                :NvimTreeToggle<CR>
  nmap <leader>r            :NvimTreeRefresh<CR>
  nmap nf                   :NvimTreeFocus<CR>
  nmap <leader>rf           :luafile %<CR>
  nmap <space>e             :lua vim.diagnostic.open_float()<CR>
  nmap [d                   :lua vim.diagnostic.goto_prev()<CR>
  nmap ]d                   :lua vim.diagnostic.goto_next()<CR>
  nmap <space>q             :lua vim.diagnostic.setloclist()<CR>
  nmap gD                   :lua vim.lsp.buf.declaration()<CR>
  nmap gd                   :lua vim.lsp.buf.definition()<CR>
  nmap K                    :lua vim.lsp.buf.hover()<CR>
  nmap gi                   :lua vim.lsp.buf.implementation()<CR>
  nmap <leader>D            :lua vim.lsp.buf.type_definition()<CR>
  nmap <leader>rn           :lua vim.lsp.buf.rename()<CR>
  nmap <leader>ac           :lua vim.lsp.buf.code_action()<CR>
  nmap <leader>oi           :lua vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })<CR>
  nmap gr                   :lua vim.lsp.buf.references()<CR>
  nmap ff                   :lua vim.lsp.buf.format({ async = true, timeout_ms = 500 })<CR>

  vnoremap J                :m '>+1<CR>gv=gv
  vnoremap K                :m '<-2<CR>gv=gv
  nmap ge                   $
  nmap gs                   0
  vnoremap ge               $
  vnoremap gs               0
  vnoremap <C-c>            "+y
  nmap zwj                  :resize -2<CR>
  nmap zwk                  :resize +2<CR>
  nmap zwl                  :vertical resize -5<CR>
  nmap zwh                  :vertical resize +5<CR>

  imap jk                   <Esc>
]]
---------------------------------------------------------
vim.cmd('colorscheme nightfly')
vim.cmd [[
  hi! Pmenu guibg=#333333
  sign define DiagnosticSignError text=✖ texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn text=◼ texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo text=! texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint text=⚉ texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
]]
