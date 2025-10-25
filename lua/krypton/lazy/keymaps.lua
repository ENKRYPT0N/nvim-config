--local telescope = require("telescope.builtin")
local opts = { noremap = true, silent = true }

-- NvimTree Plugin Keymaps --
vim.keymap.set("n", "<leader>e", "<Cmd>Neotree toggle<CR>")
vim.keymap.set("n", "<leader>fe", "<Cmd>Neotree reveal<CR>")



-- Vertical terminal
vim.keymap.set("n", "<leader>tv", "<cmd>ToggleTerm direction=vertical<CR>", { desc = "Vertical terminal" })

-- Horizontal terminal
vim.keymap.set("n", "<leader>th", "<cmd>ToggleTerm direction=horizontal<CR>", { desc = "Horizontal terminal" })

-- Floating terminal
vim.keymap.set("n", "<leader>tf", "<cmd>ToggleTerm direction=float<CR>", { desc = "Floating terminal" })

-- ToggleTerm LazyGit Keymap --
vim.keymap.set("n", "<leader>lg", function()
  local Terminal = require("toggleterm.terminal").Terminal
  local lazygit = Terminal:new({
    cmd = "lazygit",
    direction = "float",
    on_open = function(term)
      -- open at repo root
      local root = vim.fn.systemlist("git rev-parse --show-toplevel")[1]
      if root and #root > 0 then
        term:send("cd " .. vim.fn.fnameescape(root) .. "\r")
      end
    end,
  })
  lazygit:toggle()
end, { desc = "LazyGit (float)" })

vim.keymap.set("n", "<leader>hh", function ()
  local Terminal = require("toggleterm.terminal").Terminal
  local mitmproxy = Terminal:new({
    cmd = "mitmproxy",
    direction = "float",
  })
  mitmproxy:toggle()
end, { desc = "Open mitmproxy inside neovim" })

-- telescope Plugin Keymaps --

--vim.keymap.set("n", "<leader>ff", telescope.find_files, {})
--vim.keymap.set("n", "<leader>fg", telescope.live_grep, {})
--vim.keymap.set("n", "<leader>fb", telescope.buffers, {})
--vim.keymap.set("n", "<leader>fh", telescope.help_tags, {})
