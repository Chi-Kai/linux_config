vim.g.mapleader = " "

local function set_bg_light()
	vim.cmd('set background=light')
	local colors_name = vim.g.colors_name
	vim.cmd('colorscheme shine')
	vim.cmd('colorscheme ' .. colors_name)
end

local function set_bg_dark()
	vim.cmd('set background=dark')
	local colors_name = vim.g.colors_name
	vim.cmd('colorscheme ron')
	vim.cmd('colorscheme ' .. colors_name)
end

-- move
vim.keymap.set('i', '<C-g>', '<esc>')
vim.keymap.set('i', '<C-b>', '<ESC>^i')
vim.keymap.set('i', '<C-e>', '<End>')
-- view 
vim.keymap.set('n', '<leader>vl', set_bg_light)
vim.keymap.set('n', '<leader>vd', set_bg_dark)
-- file save
vim.keymap.set('n', '<C-s>', '<cmd> w <CR>')

-- f: file tree
vim.keymap.set('n', '<C-n>', ':NvimTreeToggle<cr>')
vim.keymap.set('n', '<leader>ff', ':NvimTreeFocus<cr>')
-- s:search
vim.keymap.set('n', '<leader>sf', function() require 'telescope.builtin'.find_files {} end)
vim.keymap.set('n', '<leader>sb', function() require 'telescope.builtin'.buffers {} end)
-- w: window
vim.keymap.set('n', '<leader>w1', '<c-w>o')
vim.keymap.set('n', '<leader>wx', ':x<cr>')
vim.keymap.set('n', '<leader>w2', ':sp<cr>')
vim.keymap.set('n', '<leader>w3', ':vs<cr>')
-- window resize
vim.keymap.set('n', '<A-h>', '<c-w><')
vim.keymap.set('n', '<A-l>', '<c-w>>')
vim.keymap.set('n', '<A-k>', '<c-w>-')
vim.keymap.set('n', '<A-j>', '<c-w>+')
-- b: buffer
vim.keymap.set('n', '<Tab>', ':bn<cr>')
vim.keymap.set('n', '<S-Tab>', ':bp<cr>')
vim.keymap.set('n', '<leader>x', ':Bdelete<cr>')
-- l/g/w: language
-- l: general
-- g: goto
-- w: workspace
-- c: inlay hints
vim.keymap.set('n', '<leader>le', ':Lspsaga show_line_diagnostics<cr>')
vim.keymap.set('n', '<leader>lE', ':Lspsaga show_cursor_diagnostics<cr>')
vim.keymap.set('n', '<leader>lq', vim.diagnostic.setloclist)
vim.keymap.set('n', '<leader>lk', vim.lsp.buf.hover)
vim.keymap.set('n', '<leader>ld', ':Lspsaga preview_definition<cr>')
vim.keymap.set('n', '<leader>lr', ':Lspsaga rename<cr>')
vim.keymap.set('n', '<leader>lh', vim.lsp.buf.signature_help)
vim.keymap.set('n', '<leader>la', vim.lsp.buf.code_action)
vim.keymap.set('n', '<leader>lf', vim.lsp.buf.formatting)
vim.keymap.set('n', '<leader>lb', ':SymbolsOutline<cr>')
vim.keymap.set('n', '<leader>la', ':Lspsaga code_action<cr>')
vim.keymap.set('n', '<leader>lu', ':Lspsaga lsp_finder<cr>')
vim.keymap.set('n', '<F12>', ':Lspsaga code_action<cr>')
vim.keymap.set('n', '<leader>it', function() require('rust-tools.inlay_hints').toggle_inlay_hints() end)
vim.keymap.set('n', '<leader>is', function() require('rust-tools.inlay_hints').set_inlay_hints() end)
vim.keymap.set('n', '<leader>id', function() require('rust-tools.inlay_hints').diable_inlay_hints() end)
vim.keymap.set('n', '<f4>', ':SymbolsOutline<cr>')

vim.keymap.set('n', '<leader>gD', vim.lsp.buf.declaration)
vim.keymap.set('n', '<leader>gd', vim.lsp.buf.definition)
vim.keymap.set('n', '<leader>gt', vim.lsp.buf.type_definition)
vim.keymap.set('n', '<leader>gi', vim.lsp.buf.implementation)
vim.keymap.set('n', '<leader>gp', ':Lspsaga diagnostic_jump_prev<cr>')
vim.keymap.set('n', '<leader>gn', ':Lspsaga diagnostic_jump_next<cr>')
vim.keymap.set('n', '<leader>gr', vim.lsp.buf.references)

vim.keymap.set('n', '<leader>wa', vim.lsp.buf.add_workspace_folder)
vim.keymap.set('n', '<leader>wr', vim.lsp.buf.remove_workspace_folder)
vim.keymap.set('n', '<leader>wl', function() print(vim.inspect(vim.lsp.buf.list_workspace_folders())) end)

-- t: terminal
-- use <f5> to toggle terminal, this can be set in lua/configs/terminal.lua
-- the default position is also set in lua/configs/terminal.lua
vim.keymap.set('t', '<C-g>', '<C-\\><C-n>')
vim.keymap.set('n', '<leader>tt', ':ToggleTerm direction=tab<cr>')
vim.keymap.set('n', '<leader>tn', function() require('toggleterm.terminal').Terminal:new():toggle() end)
vim.keymap.set('n', '<leader>tf', ':ToggleTerm direction=float<cr>')
vim.keymap.set('n', '<leader>th', ':ToggleTerm direction=horizontal<cr>')
vim.keymap.set('n', '<leader>tv', ':ToggleTerm direction=vertical<cr>')

