-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local kmap = vim.keymap.set

-- [[ Terminals ]]
kmap({ "n", "i", "t" }, "<a-1>", "<cmd>1ToggleTerm direction=horizontal<CR>")
kmap({ "n", "i", "t" }, "<a-2>", "<cmd>2ToggleTerm direction=vertical size=70<CR>")
kmap({ "n", "i", "t" }, "<a-3>", "<cmd>3ToggleTerm direction=float<CR>")
kmap({ "n", "i", "t" }, "<c-_>", "<cmd>3ToggleTerm direction=float<CR>")
kmap({ "n", "i", "t" }, "<a-4>", "<cmd>4ToggleTerm<CR>")

local nmap = function(keys, func, desc)
  if desc then
    desc = "LSP: " .. desc
  end

  vim.keymap.set("n", keys, func, { desc = desc })
end
nmap("gf", "<cmd>Lspsaga lsp_finder<CR>", "[G]o [F]inder")
nmap("gp", "<cmd>Lspsaga peek_definition<CR>", "[G]o [P]eek definition")
-- nmap("<leader>ca", false, "[C]ode [A]ction")
nmap("<leader>ca", "<cmd>Lspsaga code_action<CR>", "[C]ode [A]ction")
nmap("<leader>cr", "<cmd>Lspsaga rename<CR>", "[R]e[n]ame")
-- nmap('<leader>cd', '<cmd>Lspsaga show_cursor_diagnostics<CR>', 'Show [C]ursor [D]iagnostics')
nmap("gl", "<cmd>Lspsaga show_line_diagnostics<CR>", "Show [L]ine [D]iagnostics")
nmap("[d", "<cmd>Lspsaga diagnostic_jump_prev<CR>", "Previous [D]iagnostics")
nmap("]d", "<cmd>Lspsaga diagnostic_jump_next<CR>", "Next [D]iagnostics")
nmap("K", "<cmd>Lspsaga hover_doc<CR>", "Hover Documentation")
