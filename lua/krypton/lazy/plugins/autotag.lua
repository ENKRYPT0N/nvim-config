return {
  "windwp/nvim-ts-autotag",
  event = "InsertEnter",
  dependencies = "nvim-treesitter/nvim-treesitter",
  config = function()
    require("nvim-ts-autotag").setup({
      opts = {
        enable_close = true,  -- auto close tags
        enable_rename = true, -- auto rename paired tag
        enable_close_on_slash = true, -- </ triggers completion
      },
    })
  end,
}
