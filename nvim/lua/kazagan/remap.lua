vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)
vim.keymap.set("n", "<leader>w", vim.cmd.w)
vim.keymap.set("n", "<leader>q", vim.cmd.q)
vim.keymap.set("n", "<leader>q", vim.cmd.q)

vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv") -- Move visual select line up one
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv") -- Move visual select line down one

vim.keymap.set("n", "J", "mzJ`z")            -- keep cursor at start of line when combining lines
vim.keymap.set("n", "<C-d>", "<C-d>zz")      -- keep curose centered when using ctrl d
vim.keymap.set("n", "<C-u>", "<C-u>zz")      -- keep cursor centered when using ctrl u

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", "\"_dp") -- paste with leader p to not lose current yank

-- Use leader Y to copy into system clipboard
vim.keymap.set("n", "<leader>y", "\"+y")
vim.keymap.set("v", "<leader>y", "\"+y")
vim.keymap.set("n", "<leader>Y", "\"+Y")

vim.keymap.set("n", "<leader>d", "\"_d")
vim.keymap.set("v", "<leader>d", "\"_d")

vim.keymap.set("n", "<leader>c", "\"_c")
vim.keymap.set("v", "<leader>c", "\"_c")

vim.keymap.set("i", "<C-c>", "<Esc>") -- exit insert mode with ctrl c

vim.keymap.set("n", "Q", "<nop>")

vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>") -- create new tmux session, for when using tmux
-- vim.keymap.set("n", "<leader>f", function()                                 -- format current buffer currently overwritten to use lsp
--     vim.lsp.buf.format()
-- end)
vim.keymap.set("n", "<leader>f", function()
    require("conform").format { lsp_fallback = true }
end, { desc = "general format file" }
)

vim.keymap.set("n", "<C-j>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-k>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lprev<CR>zz")

vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = 'replace local' })
vim.keymap.set("v", "<leader>s", [["0y:%s/\<<C-r>0\>/<C-r>0/gI<Left><Left><Left>]], { desc = 'replace visual' })
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true, desc = 'make file executable' })

vim.keymap.set("n", "<leader>o", "i<CR><ESC>", { desc = 'break line down' }) -- break down a line in normal mode

vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end, { desc = 'go to definition' })

vim.keymap.set("n", "<leader>co", ":copen<CR>", { desc = 'open quick fix list' })

vim.keymap.set("n", "<leader>vsh", ":sp<CR>")
vim.keymap.set("n", "<leader>vsv", ":vsp<CR>")
-- vim.keymap.set('n', '<Leader>f' ":let @/=expand("%:t") <Bar> execute 'Explore' expand("%:h") <Bar> normal n<CR>")
--
-- commit help
vim.keymap.set('n', '<leader>gc', ':.!git branch --show-current | rg \'(VS-\\d+)\' -o<CR>$a: ')
