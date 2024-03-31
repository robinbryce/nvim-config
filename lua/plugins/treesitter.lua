return {
  "nvim-treesitter/nvim-treesitter",
  build = ":TSupdate", -- automatically update parsers on plugin install
  config = function()
    require("nvim-treesitter.configs").setup({
      -- Ensure the Go parser is enabled
      ensure_installed = { "go" },

      -- Enable highlighting
      highlight = {
        enable = true,
      },
    })
  end,
}
