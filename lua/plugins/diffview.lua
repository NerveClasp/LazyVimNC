return {
  "sindrets/diffview.nvim",
  dependencies = "nvim-lua/plenary.nvim",
  keys = {
    { "<leader>gv", "<cmd>DiffviewOpen<cr>", desc = "Open Diffview" },
    { "<leader>gx", "<cmd>DiffviewClose<cr>", desc = "Close Diffview" },
  },
}
