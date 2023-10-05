local nvTree =require('nvim-tree')

local updateFocusedFile = {
  enable = true,
  update_cwd = true,
  ignore_list = {},
}

local renderer = {
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
}

local diagnostics = {
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
}

local git = {
  enable = false, ignore = false, timeout = 400
}

local view = {
  cursorline = true
}

nvTree.setup({
  disable_netrw = true,
  hijack_netrw = true,
  open_on_tab = false,
  update_cwd = true,
  update_focused_file = updateFocusedFile,
  renderer = renderer,
  git = git,
  view = view,
  diagnostics = diagnostics
})
