return {
  "jose-elias-alvarez/null-ls.nvim",
  opts = function()
    local nls = require("null-ls")
    return {
      sources = {
        nls.builtins.formatting.prettierd,
        nls.builtins.formatting.stylua,
        nls.builtins.diagnostics.flake8,
        nls.builtins.diagnostics.stylelint.with({
          filetypes = {
            "svelte",
            "css",
            "scss",
          },
          condition = function(utils)
            return utils.root_has_file("stylelint.config.cjs") or utils.root_has_file("stylelint.config.js")
          end,
        }),
        nls.builtins.diagnostics.eslint_d.with({ -- js/ts linter
          -- only enable eslint if root has .eslintrc.js (not in youtube nvim video)
          condition = function(utils)
            return utils.root_has_file(".eslintrc.js") or utils.root_has_file(".eslintrc.cjs") -- change file extension if you use something else
          end,
        }),
      },
    }
  end,
}
