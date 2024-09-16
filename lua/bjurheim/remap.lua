
vim.g.mapleader = " "  -- Set the leader key to space
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)  -- Pressing <leader>pv opens the File explorer (Ex mode)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")  -- Move selected block of text down in visual mode and reselect it
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")  -- Move selected block of text up in visual mode and reselect it

vim.keymap.set("n", "J", "mzJ`z")  -- Join the current line with the next and preserve the cursor position
vim.keymap.set("n", "<C-d>", "<C-d>zz")  -- Scroll down half a page and center the cursor
vim.keymap.set("n", "<C-u>", "<C-u>zz")  -- Scroll up half a page and center the cursor
vim.keymap.set("n", "n", "nzzzv")  -- Move to the next search result and center the screen
vim.keymap.set("n", "N", "Nzzzv")  -- Move to the previous search result and center the screen
vim.keymap.set("n", "<leader>zig", "<cmd>LspRestart<cr>")  -- Restart the LSP server

vim.keymap.set("n", "<leader>vwm", function()  -- Start collaborative editing using 'vim-with-me'
    require("vim-with-me").StartVimWithMe()
end)
vim.keymap.set("n", "<leader>svwm", function()  -- Stop collaborative editing using 'vim-with-me'
    require("vim-with-me").StopVimWithMe()
end)

-- greatest remap ever
vim.keymap.set("x", "<leader>p", [["_dP]])  -- Paste over a selection in visual mode without overwriting the unnamed register

-- next greatest remap ever : asbjornHaland
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])  -- Yank text to system clipboard in normal and visual modes
vim.keymap.set("n", "<leader>Y", [["+Y]])  -- Yank an entire line to the system clipboard

vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])  -- Delete text without copying it to any register

-- This is going to get me cancelled
vim.keymap.set("i", "<C-c>", "<Esc>")  -- Map Ctrl-C to escape insert mode (though not recommended)

vim.keymap.set("n", "Q", "<nop>")  -- Disable the Q key in normal mode (used to enter Ex mode by default)
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")  -- Open a new tmux window and run 'tmux-sessionizer'
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)  -- Format the current buffer using LSP

vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")  -- Move to the next item in the quickfix list and center the cursor
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")  -- Move to the previous item in the quickfix list and center the cursor
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")  -- Move to the next item in the location list and center the cursor
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")  -- Move to the previous item in the location list and center the cursor

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])  -- Search and replace the word under the cursor globally in the File
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })  -- Make the current File executable

vim.keymap.set(  -- Insert a Go-style error check snippet
    "n",
    "<leader>ee",
    "oif err != nil {<CR>}<Esc>Oreturn err<Esc>"
)

vim.keymap.set("n", "<leader>vpp", "<cmd>e ~/.config/nvim/lua/bjurheim/remap.lua<CR>")  -- Open a specific File in your dotfiles for editing
vim.keymap.set("n", "<leader>mr", "<cmd>CellularAutomaton make_it_rain<CR>")  -- Run the 'make_it_rain' CellularAutomaton animation

vim.keymap.set("n", "<leader><leader>", function()  -- Source the current Neovim configuration
    vim.cmd("so")
end)

vim.keymap.set("n", "<leader>D", vim.lsp.buf.definition, { noremap = true, silent = true })
--vim.keymap.set("n", "<leader>r", vim.lsp.buf.references, { noremap = true, silent = true })
