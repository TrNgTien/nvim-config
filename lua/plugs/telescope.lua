local telescope = require('telescope')

local extensions = {
  media_files = {
    file_types = { 'png', 'jpg', 'jpeg', 'webp', 'pdf' },
    find_cmd = 'rg'
  }
}

telescope.load_extension('media_files')

telescope.setup {
  extensions = extensions
}
