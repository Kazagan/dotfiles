local map, opts = vim.keymap.set, { noremap = true, silent = true }

map("n", "<leader>du", function() dapui.toggle() end, { noremap = true, silent = true, desc = "Toggle DAP UI" })

map({ "n", "v" }, "<leader>dw", function() require("dapui").eval(nil, { enter = true }) end,
  { noremap = true, silent = true, desc = "Add word under cursor to Watches" })

map({ "n", "v" }, "Q", function() require("dapui").eval() end,
  {
    noremap = true,
    silent = true,
    desc =
    "Hover/eval a single value (opens a tiny window instead of expanding the full object) "
  })
