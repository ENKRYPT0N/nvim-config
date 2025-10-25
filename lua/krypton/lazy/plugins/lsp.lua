return {
  {
    "williamboman/mason.nvim",
    build = ":MasonUpdate",
    config = function()
      require("mason").setup()
    end,
  },
  {
    "williamboman/mason-lspconfig.nvim",
    dependencies = {
      { "williamboman/mason.nvim" },
      { "neovim/nvim-lspconfig",   version = "0.1.9" },
      { "hrsh7th/cmp-nvim-lsp",    version = "0.0.5" },
    },
    config = function()
      pcall(function() require("mason") end)

      local mason_lspconfig = require("mason-lspconfig")
      local lspconfig       = require("lspconfig")

      vim.diagnostic.config({
        signs = {
          text = {
            [vim.diagnostic.severity.ERROR] = "",
            [vim.diagnostic.severity.WARN]  = "",
            [vim.diagnostic.severity.HINT]  = "",
            [vim.diagnostic.severity.INFO]  = "",
          },
        },
        virtual_text    = true,
        underline       = true,
        update_in_insert= false,
        severity_sort   = true,
      })

      -- Capabilities (with nvim-cmp)
      local cmp_caps = require("cmp_nvim_lsp").default_capabilities()
      local capabilities = vim.tbl_deep_extend("force", cmp_caps, {
        textDocument = {
          foldingRange = { dynamicRegistration = false, lineFoldingOnly = true },
        },
      })

      -- Servers to auto-install via Mason
      local servers = {
        -- core
        "lua_ls", "bashls", "html", "cssls", "jsonls",
        -- extras
        "dockerls", "rust_analyzer", "tailwindcss",
        "pyright", "asm_lsp", "eslint",
        -- TS ecosystem
        "vtsls",
      }

      mason_lspconfig.setup({
        ensure_installed = servers,
        automatic_enable = true,
        automatic_installation = false,
        handlers = {},
      })

      -- Manual setup loop
      for _, server in ipairs(servers) do
        local opts = { capabilities = capabilities }

        if server == "lua_ls" then
          opts.settings = {
            Lua = {
              runtime = { version = "LuaJIT" },
              diagnostics = { globals = { "vim" } },
              workspace = { library = vim.api.nvim_get_runtime_file("", true) },
              telemetry = { enable = false },
            },
          }
        elseif server == "vtsls" then
          opts.settings = {
            vtsls = {
              tsserver = {
                -- add project-specific plugins/settings here if needed
              },
            },
          }
        elseif server == "eslint" then
          opts.settings = {
            -- optional ESLint tuning
            workingDirectories = { mode = "auto" },
          }
        end

        lspconfig[server].setup(opts)
      end
    end,
  },
}
