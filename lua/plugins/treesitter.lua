---@diagnostic disable: missing-parameter
return {
  "nvim-treesitter/nvim-treesitter",
  dependencies = { "nvim-treesitter/playground" },
  opts = function(_, opts)
    if type(opts.ensure_installed) == "table" then
      vim.list_extend(opts.ensure_installed, {
        "json",
        "json5",
        "jsonc",
        "typescript",
        "tsx",
        "svelte",
        "rust",
        "css",
        "scss",
        "scheme",
        "arduino",
      })
    end
  end,
}
