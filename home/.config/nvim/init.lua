local g = vim.g
local o = vim.opt

g.mapleader = " "
g.maplocalleader = " "

o.autocomplete = true
o.clipboard = "unnamedplus"
o.colorcolumn = { 100 }
o.expandtab = true
o.shiftwidth = 4
o.tabstop = 4
o.ignorecase = true
o.smartcase = true
o.mouse = ""
o.number = true
o.relativenumber = true
o.scrolloff = 4
o.signcolumn = "yes"
o.splitbelow = true
o.splitright = true
o.termguicolors = true
o.undofile = true
o.updatetime = 250

vim.pack.add({
  { src = "https://github.com/nyoom-engineering/oxocarbon.nvim" },
  { src = "https://github.com/nvim-lua/plenary.nvim" },
  { src = "https://github.com/nvim-tree/nvim-web-devicons" },
  { src = "https://github.com/MunifTanjim/nui.nvim" },
  { src = "https://github.com/nvim-neo-tree/neo-tree.nvim" },
  { src = "https://github.com/nvim-orgmode/orgmode" },
  { src = "https://github.com/neovim/nvim-lspconfig" },
})

o.background = "dark"
vim.cmd.colorscheme("oxocarbon")

require("neo-tree").setup({
  close_if_last_window = true,
  filesystem = {
    follow_current_file = { enabled = true },
    hijack_netrw_behavior = "open_current",
    filtered_items = {
      hide_dotfiles = false,
      hide_gitignored = false,
    },
  },
  window = {
    width = 30,
  },
})

require("orgmode").setup({
  org_agenda_files = "~/notes/**/*",
})

vim.lsp.enable({ "clangd", "gopls", "lua_ls", "org", "rust_analyzer" })

vim.diagnostic.config({
  virtual_text = true,
  severity_sort = true,
})

vim.api.nvim_create_autocmd("LspAttach", {
  callback = function(args)
    local opts = { buffer = args.buf }
    vim.keymap.set("n", "gd", vim.lsp.buf.definition, opts)
    vim.keymap.set("n", "gr", vim.lsp.buf.references, opts)
    vim.keymap.set("n", "K", vim.lsp.buf.hover, opts)
    vim.keymap.set("n", "<leader>rn", vim.lsp.buf.rename, opts)
    vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, opts)
    vim.keymap.set("n", "[d", vim.diagnostic.goto_prev, opts)
    vim.keymap.set("n", "]d", vim.diagnostic.goto_next, opts)
  end,
})

vim.keymap.set("n", "<leader>op", "<cmd>Neotree toggle<cr>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<cr>")
