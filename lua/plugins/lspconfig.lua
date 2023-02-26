---@diagnostic disable: missing-parameter
return {
  "neovim/nvim-lspconfig",
  dependencies = { "jose-elias-alvarez/typescript.nvim" },
  init = function()
    local keys = require("lazyvim.plugins.lsp.keymaps").get()
    -- change a keymap
    -- keys[#keys + 1] = { "K", "<cmd>echo 'hello'<cr>" }
    -- disable a keymap
    -- keys[#keys + 1] = { "K", false }
    -- add a keymap
    -- keys[#keys + 1] = { "H", "<cmd>echo 'hello'<cr>" }
    keys[#keys + 1] = { "gf", "<cmd>Lspsaga lsp_finder<CR>", "[G]o [F]inder" }
    keys[#keys + 1] = { "gp", "<cmd>Lspsaga peek_definition<CR>", "[G]o [P]eek definition" }
    -- keys[#keys + 1] = {"<leader>ca", false, "[C]ode [A]ction"}
    keys[#keys + 1] = { "<leader>ca", "<cmd>Lspsaga code_action<CR>", "[C]ode [A]ction" }
    keys[#keys + 1] = { "<leader>cr", "<cmd>Lspsaga rename<CR>", "[R]e[n]ame" }
    -- keys[#keys + 1] = {'<leader>cd', '<cmd>Lspsaga show_cursor_diagnostics<CR>', 'Show [C]ursor [D]iagnostics'}
    keys[#keys + 1] = { "gl", "<cmd>Lspsaga show_line_diagnostics<CR>", "Show [L]ine [D]iagnostics" }
    keys[#keys + 1] = { "[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Previous [D]iagnostics" }
    keys[#keys + 1] = { "]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", "Next [D]iagnostics" }
    keys[#keys + 1] = { "K", "<cmd>Lspsaga hover_doc<CR>", "Hover Documentation" }
  end,
  opts = {
    -- make sure mason installs the server
    servers = {
      tsserver = {},
      jsonls = {
        -- lazy-load schemastore when needed
        on_new_config = function(new_config)
          new_config.settings.json.schemas = new_config.settings.json.schemas or {}
          vim.list_extend(new_config.settings.json.schemas, require("schemastore").json.schemas())
        end,
        settings = {
          json = {
            format = {
              enable = true,
            },
            validate = { enable = true },
          },
        },
      },
    },
    setup = {
      tsserver = function(_, opts)
        require("lazyvim.util").on_attach(function(client, buffer)
          if client.name == "tsserver" then
            -- stylua: ignore
            vim.keymap.set("n", "<leader>co", "<cmd>TypescriptOrganizeImports<CR>", { buffer = buffer, desc = "Organize Imports" })
            vim.keymap.set(
              "n",
              "<leader>cR",
              "<cmd>TypescriptRenameFile<CR>",
              { desc = "Rename File", buffer = buffer }
            )
          end
        end)
        require("typescript").setup({ server = opts })
        return true
      end,
    },
  },
}
