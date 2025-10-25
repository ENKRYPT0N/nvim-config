-- ~/.config/nvim/lua/krypton/plugins/toggleterm.lua
return {
  "akinsho/toggleterm.nvim",
  version = "*",   -- latest stable
  config = function()
    require("toggleterm").setup({
      -- Terminal basics
      size = function(term)
        if term.direction == "horizontal" then
          return 15
        elseif term.direction == "vertical" then
          return vim.o.columns * 0.4
        end
      end,
      open_mapping = [[<C-\>]], -- Ctrl + \ to toggle
      hide_numbers = true,      -- hide line numbers inside terminal
      shade_terminals = true,
      shading_factor = 2,
      start_in_insert = true,
      insert_mappings = true,
      persist_size = true,
      persist_mode = true,
      direction = "float",      -- default: floating terminal
      close_on_exit = true,
      shell = vim.o.shell,      -- use user shell
      float_opts = {
        border = "curved",
        winblend = 3,
      },
    })

    -- Keymaps for different layouts
--   local Terminal = require("toggleterm.terminal").Terminal

    -- Lazygit terminal
--    local lazygit = Terminal:new({ cmd = "lazygit", hidden = true })
--    function _lazygit_toggle()
--      lazygit:toggle()
--    end
--    vim.keymap.set("n", "<leader>gg", _lazygit_toggle, { desc = "Toggle Lazygit" })

    -- Python REPL terminal
--    local python = Terminal:new({ cmd = "python3", hidden = true })
--    function _python_toggle()
--      python:toggle()
--    end
--    vim.keymap.set("n", "<leader>py", _python_toggle, { desc = "Toggle Python REPL" })
  end,
}

