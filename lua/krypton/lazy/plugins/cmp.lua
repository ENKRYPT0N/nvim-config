return {
  {
    "hrsh7th/nvim-cmp",
    version = "0.0.9", -- 🔒 stable
    dependencies = {
      { "hrsh7th/cmp-nvim-lsp", version = "0.0.5" }, -- LSP source
      { "hrsh7th/cmp-buffer",   version = "0.0.1" }, -- buffer words
      { "hrsh7th/cmp-path",     version = "0.0.1" }, -- filesystem paths
      { "hrsh7th/cmp-nvim-lua", version = "0.0.1" }, -- Lua API (optional)
      { "saadparwaiz1/cmp_luasnip", version = "0.0.1" }, -- LuaSnip bridge

      -- Snippets
      { "L3MON4D3/LuaSnip", version = "2.3.0" },
      { "rafamadriz/friendly-snippets", version = "1.3.0" },

      -- Icons
      { "onsails/lspkind.nvim", version = "0.2.0" },
    },
    config = function()
      local cmp = require("cmp")
      local luasnip = require("luasnip")
      local lspkind = require("lspkind")

      require("luasnip.loaders.from_vscode").lazy_load()

      cmp.setup({
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        mapping = cmp.mapping.preset.insert({
          ["<C-b>"] = cmp.mapping.scroll_docs(-4),
          ["<C-f>"] = cmp.mapping.scroll_docs(4),
          ["<C-Space>"] = cmp.mapping.complete(),
          ["<C-e>"] = cmp.mapping.abort(),
          ["<CR>"] = cmp.mapping.confirm({ select = true }),

          -- Tab to jump between suggestions/snippets
          ["<Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_next_item()
            elseif luasnip.expand_or_jumpable() then
              luasnip.expand_or_jump()
            else
              fallback()
            end
          end, { "i", "s" }),

          ["<S-Tab>"] = cmp.mapping(function(fallback)
            if cmp.visible() then
              cmp.select_prev_item()
            elseif luasnip.jumpable(-1) then
              luasnip.jump(-1)
            else
              fallback()
            end
          end, { "i", "s" }),
        }),
        formatting = {
          format = lspkind.cmp_format({
            mode = "symbol_text",
            maxwidth = 50,
            ellipsis_char = "…",
          }),
        },
        sources = cmp.config.sources({
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "buffer" },
          { name = "path" },
          { name = "nvim_lua" },
        }),
        window = {
          completion = cmp.config.window.bordered(),
          documentation = cmp.config.window.bordered(),
        },
        experimental = {
          ghost_text = true,
        },
      })
    end,
  },
}
