vim.g.catppuccin_flavour = "mocha" -- latte, frappe, macchiato, mocha Darkest

return {
  "catppuccin/nvim",
  name = "catppuccin",
  opts = {
    setup = {
      flavour = "mocha",
      transparent_background = false,
      term_colors = false,
      compile = {
        enabled = false,
        path = vim.fn.stdpath("cache") .. "/catppuccin",
      },
      dim_inactive = {
        enabled = true,
        shade = "dark",
        percentage = 0.15,
      },
      styles = {
        comments = { "italic" },
        conditionals = { "bold" },
        loops = {},
        functions = { "italic" },
        keywords = { "italic" },
        strings = {},
        variables = {},
        numbers = {},
        booleans = {},
        properties = {},
        types = { "italic", "bold" },
        operators = {},
      },
      integrations = {
        -- For various plugins integrations see https://github.com/catppuccin/nvim#integrations
        indent_blankline = {
          enabled = true,
          colored_indent_levels = true,
        },
        neotree = {
          enabled = true,
          show_root = true, -- makes the root folder not transparent
          transparent_panel = false, -- make the panel transparent
        },
        native_lsp = {
          enabled = true,
          virtual_text = {
            errors = { "italic" },
            hints = { "italic" },
            warnings = { "italic" },
            information = { "italic" },
          },
          underlines = {
            errors = { "underline" },
            hints = { "underline" },
            warnings = { "underline" },
            information = { "underline" },
          },
        },
        ts_rainbow = true,
        telescope = true,
        gitsigns = true,
        cmp = true,
        nvimtree = true,
        treesitter_context = true,
        treesitter = true,
        lsp_trouble = true,
        which_key = true,
        fidget = true,
      },
      color_overrides = {},
      highlight_overrides = {},
    },
  },
}
