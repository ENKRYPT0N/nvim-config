return {
  {
    "nvim-neo-tree/neo-tree.nvim",
    branch = "v3.x", -- stick to v3 for stability
    dependencies = {
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "nvim-tree/nvim-web-devicons", -- optional but recommended
    },
    lazy = false,
    config = function()
      require("neo-tree").setup({
        close_if_last_window = false,
        popup_border_style = "rounded",
        enable_git_status = true,
        enable_diagnostics = true,
        sources = { "filesystem", "buffers", "git_status" },

        default_component_configs = {
          indent = {
            indent_size = 2,
            with_markers = true,
            indent_marker = "│",
            last_indent_marker = "└",
            highlight = "NeoTreeIndentMarker",
            expander_collapsed = "",
            expander_expanded = "",
            expander_highlight = "NeoTreeExpander",
          },
          icon = {
            folder_closed = "",
            folder_open = "",
            folder_empty = "󰜌",
            default = "*",
          },
          git_status = {
            symbols = {
              added     = "✚",
              modified  = "",
              deleted   = "✖",
              renamed   = "󰁕",
              untracked = "",
              ignored   = "",
              unstaged  = "󰄱",
              staged    = "",
              conflict  = "",
            },
          },
        },

        window = {
          position = "left",
          width = 34,
          mapping_options = { noremap = true, nowait = true },
          mappings = {
            ["<cr>"] = "open",
            ["l"]    = "open",
            ["h"]    = "close_node",
            ["H"]    = "navigate_up",
            ["L"]    = "set_root",

            ["s"] = "open_vsplit",
            ["S"] = "open_split",
            ["t"] = "open_tabnew",

            ["a"] = "add",
            ["A"] = "add_directory",
            ["r"] = "rename",
            ["d"] = "delete",
            ["y"] = "copy_to_clipboard",
            ["x"] = "cut_to_clipboard",
            ["p"] = "paste_from_clipboard",

            ["R"] = "refresh",
            ["q"] = "close_window",
            ["?"] = "show_help",
            ["<space>"] = "noop", -- free up space
          },
        },

        filesystem = {
          filtered_items = {
            visible = false,
            hide_dotfiles = false,
            hide_gitignored = false,
          },
          follow_current_file = { enabled = true },
          group_empty_dirs = false,
          hijack_netrw_behavior = "open_default",
          use_libuv_file_watcher = true,
          window = {
            mappings = {
              ["<bs>"] = "navigate_up",
              ["."] = "set_root",
              ["/"] = "fuzzy_finder",
              ["f"] = "filter_on_submit",
              ["<c-x>"] = "clear_filter",
            },
          },
        },

        buffers = {
          follow_current_file = { enabled = true },
          group_empty_dirs = true,
          show_unloaded = true,
          window = {
            mappings = {
              ["bd"] = "buffer_delete",
              ["d"]  = "buffer_delete",
            },
          },
        },

        git_status = {
          window = {
            position = "float",
          },
        },
      })
    end,
  },
}

