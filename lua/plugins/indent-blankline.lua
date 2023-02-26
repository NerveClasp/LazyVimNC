vim.opt.listchars:append("eol:")
-- vim.opt.listchars:append("eol:↴")

return {
  "lukas-reineke/indent-blankline.nvim",
  opts = {
    char = "▏",
    -- char = "│",
    -- filetype_exclude = { "help", "alpha", "dashboard", "neo-tree", "Trouble", "lazy" },
    show_trailing_blankline_indent = false,
    show_end_of_line = true,

    -- show_current_context = false,
  },
}
