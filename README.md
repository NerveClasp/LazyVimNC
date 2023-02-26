# 💙💛 NerveClasp's LazyVim

A modified starter template for [LazyVim](https://github.com/LazyVim/LazyVim).
Refer to the [documentation](https://lazyvim.github.io/installation) for more details.

## Technologies I work/play with

I'm a Frontend developer, so primarily work with Svelte and TypeScript. I play
with Rust and Arduino in my free time

## Major additions and changes

- `ESLint` is used only if there is `.eslintrc.js` or `.eslintrc.cjs` in the root of the project
- `Stylelint` is used for `.svelte` files if there is `stylelint.config.js` or `stylelint.config.cjs` in the root of the project
- [Lspsaga](https://github.com/glepnir/lspsaga.nvim) [config](./lua/plugins/lspsaga.lua) and [keymaps](./lua/plugins/lspconfig.lua) for better LSP stuff like:
  - `gp` to "preview" a component or a method in the pop-up in the same buffer (allows editing)
  - more fun `[d` and `]d` (Prev/Next Diagnostics)
  - slightly better looking "Actions" `<leader>ca`
- [ToggleTerm](https://github.com/akinsho/toggleterm.nvim) terminal emulator
  - `Alt+1` - `Alt+4` opens 4 separate terminals
  - `Ctrl+/` opens the third terminal (`Alt+3` and `Ctrl+/` open the same terminal)
- Git [Diffview](https://github.com/sindrets/diffview.nvim) for that nice split diff view
  - `<leader>gv` opens the diffview
  - `<leader>gx` closes it
- [Markdown Preview](https://github.com/iamcco/markdown-preview.nvim) - run `:MarkdownPreview` to enable `.md` files preview in your browser. `:MarkdownPreviewStop` to stop
- [Catppuccin](https://github.com/catppuccin/nvim) color theme
