local colors = {
  normal = {
    az_fg = "#ffffff",
    az_bg = "#000000",
    by_fg = "#ffffff",
    by_bg = "#000000",
    cx_fg = "#000000",
    cx_bg = "#d7d9e1",
  },
  insert = {
    az_fg = "#ffffff",
    az_bg = "#4a0000",
    by_fg = "#ffffff",
    by_bg = "#000000",
    cx_fg = "#000000",
    cx_bg = "#d7d9e1",
  },
  visual = {
    az_fg = "#ffffff",
    az_bg = "#ab0000",
    by_fg = "#ffffff",
    by_bg = "#000000",
    cx_fg = "#000000",
    cx_bg = "#d7d9e1",
  },
  error_fg = "#ca1243",
  warn_fg = "#fe8019",
}

local theme = {
  normal = {
    a = { fg = colors.normal.az_fg, bg = colors.normal.az_bg },
    b = { fg = colors.normal.by_fg, bg = colors.normal.by_bg },
    c = { fg = colors.normal.cx_fg, bg = colors.normal.cx_bg },
    x = { fg = colors.normal.cx_fg, bg = colors.normal.cx_bg },
    y = { fg = colors.normal.by_fg, bg = colors.normal.by_bg },
    z = { fg = colors.normal.az_fg, bg = colors.normal.az_bg },
  },
  insert = {
    a = { fg = colors.insert.az_fg, bg = colors.insert.az_bg },
    b = { fg = colors.insert.by_fg, bg = colors.insert.by_bg },
    c = { fg = colors.insert.cx_fg, bg = colors.insert.cx_bg },
    x = { fg = colors.insert.cx_fg, bg = colors.insert.cx_bg },
    y = { fg = colors.insert.by_fg, bg = colors.insert.by_bg },
    z = { fg = colors.insert.az_fg, bg = colors.insert.az_bg },

  },
  visual = {
    a = { fg = colors.visual.az_fg, bg = colors.visual.az_bg },
    b = { fg = colors.visual.by_fg, bg = colors.visual.by_bg },
    c = { fg = colors.visual.cx_fg, bg = colors.visual.cx_bg },
    x = { fg = colors.visual.cx_fg, bg = colors.visual.cx_bg },
    y = { fg = colors.visual.by_fg, bg = colors.visual.by_bg },
    z = { fg = colors.visual.az_fg, bg = colors.visual.az_bg },
  },
  replace = {
    a = { fg = colors.normal.az_fg, bg = colors.visual.az_bg },
    b = { fg = colors.normal.by_fg, bg = colors.visual.by_bg },
    c = { fg = colors.normal.cx_fg, bg = colors.visual.cx_bg },
    x = { fg = colors.normal.cx_fg, bg = colors.visual.cx_bg },
    y = { fg = colors.normal.by_fg, bg = colors.visual.by_bg },
    z = { fg = colors.normal.az_fg, bg = colors.visual.az_bg },
  },
}

local function setup_lualine()
  require("lualine").setup({
    options = {
      theme = theme,
      component_separators = { left = '', right = '' },
      section_separators = { left = '', right = '' },
      globalstatus = true,
    },
    sections = {
      lualine_a = {
        "mode"
      },
      lualine_b = {
        "branch",
        "diff",
        {
          "diagnostics",
          source = { "nvim" },
          sections = { "error" },
          diagnostics_color = { error = { fg = colors.error_fg } },
        },
        {
          "diagnostics",
          source = { "nvim" },
          sections = { "warn" },
          diagnostics_color = { warn = { fg = colors.warn_fg } },
        },
      },
      lualine_c = {
        "filename"
      },
      lualine_x = {},
      lualine_y = {
        "encoding", "fileformat"
      },
      lualine_z = {
        "progress", "location"
      },
    },
  })
end

return {
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons", opt = true
    },
    config = setup_lualine,
  }
}


