vim.cmd [[
  nmap <C-s>                :w<CR>
  nmap <C-q>                :qa<CR>
  nmap <C-z>                :undo<CR>
  nmap <C-y>                :redo<CR>
  nmap <C-h>                <C-w>h
  nmap <C-j>                <C-w>j
  nmap <C-l>                <C-w>l
  nmap <C-k>                <C-w>k
  nmap <C-f>                :Telescope current_buffer_fuzzy_find<CR>
  nmap <C-p>                :Telescope git_files<CR>
  nmap <C-r>                :Telescope find_files<CR>
  nmap <C-b>                :NvimTreeToggle<CR>

  nmap <leader>cl           :NvimTreeCollapse<CR>
  vnoremap <leader>cl       :NvimTreeCollapse<CR>

  nmap <leader>ld           :Telescope lsp_document_symbols<CR>
  nmap <M-j>                <C-e>
  nmap <M-k>                <C-y>
  vnoremap <C-c>            "+y
  nmap <leader>ts           :Telescope<CR>
  nmap <leader>ff           :Telescope live_grep<CR>
  nmap <leader>fs           :Telescope grep_string<CR>
  nmap <leader>gc           :Telescope git_commits<CR>
  nmap <leader>gst          :Telescope git_status<CR>
  nmap <leader>gb           :Telescope git_branches<CR>
  nmap <leader>r            :NvimTreeRefresh<CR>
  nmap <leader>rf           :luafile %<CR>
  nmap <leader>D            :lua vim.lsp.buf.type_definition()<CR>
  nmap <leader>rn           :lua vim.lsp.buf.rename()<CR>
  nmap <leader>ac           :lua vim.lsp.buf.code_action()<CR>
  nmap <leader>oi           :lua vim.lsp.buf.code_action({ context = { only = { 'source.organizeImports' } }, apply = true })<CR>
  nmap <space>q             :lua vim.diagnostic.setloclist()<CR>
  nmap <space>e             :lua vim.diagnostic.open_float()<CR>
  nmap nf                   :NvimTreeFocus<CR>
  nmap [d                   :lua vim.diagnostic.goto_prev()<CR>
  nmap ]d                   :lua vim.diagnostic.goto_next()<CR>
  nmap gD                   :lua vim.lsp.buf.declaration()<CR>
  nmap gd                   :lua vim.lsp.buf.definition()<CR>
  nmap K                    :lua vim.lsp.buf.hover()<CR>
  nmap gi                   :lua vim.lsp.buf.implementation()<CR>
  nmap gr                   :lua vim.lsp.buf.references()<CR>
  nmap ff                   :FormatWrite<CR>
  vnoremap J                :m '>+1<CR>gv=gv
  vnoremap K                :m '<-2<CR>gv=gv
  nmap ge                   $
  nmap gs                   0
  vnoremap ge               $
  vnoremap gs               0
  imap jk                   <Esc>

]]

vim.cmd [[
  colorscheme onedark

  hi! Pmenu guibg=#333333

  sign define DiagnosticSignError text=✖ texthl=DiagnosticSignError linehl= numhl=DiagnosticLineNrError
  sign define DiagnosticSignWarn text=◼ texthl=DiagnosticSignWarn linehl= numhl=DiagnosticLineNrWarn
  sign define DiagnosticSignInfo text=! texthl=DiagnosticSignInfo linehl= numhl=DiagnosticLineNrInfo
  sign define DiagnosticSignHint text=⚉ texthl=DiagnosticSignHint linehl= numhl=DiagnosticLineNrHint
]]
