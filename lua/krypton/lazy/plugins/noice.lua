return {
  "folke/noice.nvim",
  event = "VeryLazy",
  dependencies = {
    "MunifTanjim/nui.nvim",
    "rcarriga/nvim-notify",
  },
  config = function()
    -- Use notify for pretty notifications
    vim.notify = require("notify")
    local stages_util = require("notify.stages.util")

    require("notify").setup({
      -- Animation style: fade, slide, static

      -- Default timeout (ms)
      timeout = 3000,

      -- Max number of notifications shown at once
      max_width = math.floor(vim.o.columns * 0.8),
      max_height = math.floor(vim.o.lines * 0.4),

      -- Icons for different levels
      icons = {
        ERROR = "",
        WARN  = "",
        INFO  = "",
        DEBUG = "",
        TRACE = "✎",
      },
      render = "default", -- "minimal" for a cleaner look 

      stages = "fade"
    })

    require("noice").setup({
      lsp = {
        progress = {
          enabled = true,
          view = "mini",
        },
        hover = { enabled = true },
        signature = { enabled = true },
        message = { enabled = true },
      },
      presets = {
        bottom_search = true,
        command_palette = true,
        long_message_to_split = true,
        lsp_doc_border = true,
      },
      notify = {
        enabled = true,
        view = "notify",
      },
      views = {
        cmdline_popup = {
          position = {
            row = vim.o.lines - 3,
            col = "0%",
          },
          size = {
            width = 30,
            height = 1,
          },
          border = {
            style = "single",
            padding = { 0, 1 },
          },
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
        popupmenu = {
          relative = "editor",
          position = { row = 8, col = "50%" },
          size = { width = 60, height = 10 },
          border = { style = "rounded", padding = { 0, 1 } },
          win_options = {
            winhighlight = "NormalFloat:NormalFloat,FloatBorder:FloatBorder",
          },
        },
      },
    })

    -- Keymaps for quick access
    vim.keymap.set("n", "<leader>nn", function() require("noice").cmd("history") end,
      { desc = "Noice history" })
    vim.keymap.set("n", "<leader>nl", function() require("noice").cmd("last") end,
      { desc = "Noice last message" })
    vim.keymap.set("n", "<leader>nd", function() require("noice").cmd("dismiss") end,
      { desc = "Noice dismiss" })
  end,
}
