vim.cmd([[
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath=&runtimepath
source ~/.vimrc
]])

vim.g.mapleader = ' '

require('core.plugins')
require("mason").setup()
require("mason-lspconfig").setup({
        ensure_installed = {"lua_ls", "pylsp", "eslint"}
})

local lsp = require "lspconfig"
local coq = require "coq" -- add this
vim.g.coq_settings = {
        ["keymap.jump_to_mark"] = "null"
}

lsp.lua_ls.setup(coq.lsp_ensure_capabilities())
lsp.pylsp.setup(coq.lsp_ensure_capabilities())
lsp.eslint.setup(coq.lsp_ensure_capabilities())

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, {})
vim.keymap.set('n', 'ö', builtin.live_grep, {})
vim.keymap.set('n', '<leader>fb', builtin.buffers, {})
vim.keymap.set('n', '<leader>fh', builtin.help_tags, {})
vim.keymap.set('n', '<leader>lf', builtin.lsp_document_symbols, {})
vim.keymap.set('n', '<leader>gd', builtin.lsp_definitions, {})

local telescope = require('telescope')
telescope.setup({})
