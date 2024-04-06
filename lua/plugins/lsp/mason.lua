return {
  "williamboman/mason.nvim",
  dependencies = {
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
  },
  config = function()
    -- import mason
    local mason = require("mason")

    -- import mason-lspconfig
    local mason_lspconfig = require("mason-lspconfig")

    local mason_tool_installer = require("mason-tool-installer")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
          package_installed = "✓",
          package_pending = "➜",
          package_uninstalled = "✗",
        },
      },
    })

    mason_lspconfig.setup({
      -- list of servers for mason to install
      ensure_installed = {
        "bashls",
        "cssls",
        "emmet_ls",
        "gopls",
        "golangci_lint_ls",
        "graphql",
        "helm_ls",
        "html",
        "jsonls",
        "lua_ls",
        "prismals",
        "pyright",
        "rust_analyzer",
        "solidity_ls_nomicfoundation",
        "svelte",
        "tailwindcss",
        "tsserver",
        "yamlls",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    mason_tool_installer.setup({
      ensure_installed = {
        "black", -- python formatter
        "eslint_d", -- js linter
        "isort", -- python formatter
        "gopls",
        "delve",
        "prettier", -- prettier formatter
        "pylint", -- python linter
        "stylua", -- lua formatter
        "yamlfmt",
        "yamllint",
      },
    })
  end,
}
