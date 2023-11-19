local status, mellifluous = pcall(require, 'mellifluous')
if (not status) then return end

mellifluous.setup({
  dim_inactive = false,
  color_set = 'mellifluous',
  styles = { -- see :h attr-list for options. set {} for NONE, { option = true } for option
    comments = { italic = true },
  },
  transparent_background = {
    enabled = true,
    floating_windows = true,
    telescope = true,
    file_tree = false,
    cursor_line = true,
    status_line = true,
  },
  flat_background = {
    line_numbers = false,
    floating_windows = false,
    file_tree = false,
    cursor_line_number = false,
  },
  plugins = {
    cmp = true,
    gitsigns = true,
    indent_blankline = true,
    nvim_tree = {
      enabled = false,
      show_root = false,
    },
    neo_tree = {
      enabled = false,
    },
    telescope = {
      enabled = true,
      nvchad_like = true,
    },
    startify = true,
  },
})
