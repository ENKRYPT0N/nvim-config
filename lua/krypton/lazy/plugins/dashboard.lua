return {
  "nvimdev/dashboard-nvim",
  event = "VimEnter",
  dependencies = { "nvim-tree/nvim-web-devicons" }, -- icons support
  config = function()
    local db = require("dashboard")

    db.setup({
      theme = "doom", -- "hyper", "doom", or "classic"
      config = {
        header = {
          " ██████   █████                   █████   █████  ███                 ",
          "▒▒██████ ▒▒███                   ▒▒███   ▒▒███  ▒▒▒                  ",
          " ▒███▒███ ▒███   ██████   ██████  ▒███    ▒███  ████  █████████████  ",
          " ▒███▒▒███▒███  ███▒▒███ ███▒▒███ ▒███    ▒███ ▒▒███ ▒▒███▒▒███▒▒███ ",
          " ▒███ ▒▒██████ ▒███████ ▒███ ▒███ ▒▒███   ███   ▒███  ▒███ ▒███ ▒███ ",
          " ▒███  ▒▒█████ ▒███▒▒▒  ▒███ ▒███  ▒▒▒█████▒    ▒███  ▒███ ▒███ ▒███ ",
          " █████  ▒▒█████▒▒██████ ▒▒██████     ▒▒███      █████ █████▒███ █████",
          "▒▒▒▒▒    ▒▒▒▒▒  ▒▒▒▒▒▒   ▒▒▒▒▒▒       ▒▒▒      ▒▒▒▒▒ ▒▒▒▒▒ ▒▒▒ ▒▒▒▒▒ ",
          "                                                                     ",
          "                                                                     ",
          "                                                                     ",
        },
        center = {
          {
            icon = "󰈔   ", -- nf-md-file_plus_outline (New File)
            desc = "New File                        ",
            key = "n",
            action = "enew",
          },
          {
            icon = "󰋚   ", -- nf-md-history (Recent)
            desc = "Recent Files                    ",
            key = "r",
            action = "Telescope oldfiles",
          },
          {
            icon = "󰈞   ", -- nf-md-file_find (Find File)
            desc = "Find File                       ",
            key = "f",
            action = "Telescope find_files",
          },
          {
            icon = "❯_  ",
            desc = "Open Terminal                   ",
            key = "t",
            action = "ToggleTerm"
          },
          {
            icon = "   ",
            desc = "Open Lazy Git                   ",
            key = "l",
            action = function ()
              local Terminal = require("toggleterm.terminal").Terminal
              local lg = Terminal:new({
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
              lg:toggle()
            end
          },
          {
            icon = "󰓡   ",
            desc = "Open MitmProxy                   ",
            key = "p",
            action = function ()
              local Terminal = require("toggleterm.terminal").Terminal
              local mitmproxy = Terminal:new({
                cmd = "mitmproxy",
                direction = "float",
              })
              mitmproxy:toggle()
            end
          },
          {
            icon = "󰐃   ", -- nf-md-restore (Session)
            desc = "Last Session                    ",
            key = "s",
            action = "SessionLoad",
          },
          {
            icon = "󰒲   ",
            desc = "Open Lazy Nvim                  ",
            key = "m",
            action = "Lazy"
          },
          {
            icon = "󰅚   ", -- nf-md-close_circle (Quit)
            desc = "Quit All                        ",
            key = "q",
            action = "qa",
          },
        },
        footer = function()
          local stats = require("lazy").stats()
          local total_plugins = stats.count or 0
          local loaded_plugins = stats.loaded or 0

          -- calculate elapsed ms since Neovim started
          local now = vim.loop.hrtime()
          local elapsed_ms = (now - vim.g.start_time) / 1e6

          return {
            "",
            "",
            "クリプトン は " .. elapsed_ms .. " ミリ秒で " .. loaded_plugins .. "/" .. total_plugins .. " 個のプラグインをロードしました"
          }
        end,
        vertical_center = true,
      },
    })
  end,
}

