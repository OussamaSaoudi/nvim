local plugins = {
  {
    "christoomey/vim-tmux-navigator",
    lazy = false
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "ThePrimeagen/vim-be-good"
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "clangd",
        "tsserver",
        "rust_analyzer"
      }
    }
  },
  {
    "p00f/clangd_extensions.nvim"
  },
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        "c",
        "cpp",
        "javascript"
      }
    },
    dependencies = {
      "danymat/neogen",
    }
  },
  {
    "nvim-treesitter/playground",
  },
  {
    "tpope/vim-fugitive"
  },
  {
    "danymat/neogen",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      require "custom.configs.neogen"
    end,
  },
  {
    "nvim-treesitter/nvim-tree-docs",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function ()
      require "custom.configs.tree-docs"
    end
  },
  {
    "rust-lang/rust.vim",
    ft = "rust",
    init = function ()
      vim.g.rustfmt_autosave = 1
    end
  },
  {
    "simrat39/rust-tools.nvim",
    ft = "rust",
    dependencies = "neovim/nvim-lspconfig",
    opts = function ()
      return require "custom.configs.rust-tools"
    end,
    config = function(_, opts)
      require('rust-tools').setup(opts)
    end
  },
  {
    "mfussenegger/nvim-dap",
    init = function()
      require("core.utils").load_mappings("dap")
    end
  },
  {
    'saecki/crates.nvim',
    dependencies = "hrsh7th/nvim-cmp",
    ft = {"rust", "toml"},
    config = function(_, opts)
      local crates = require('crates')
      crates.setup(opts)
      require('cmp').setup.buffer({
        sources = { { name = "crates" }}
      })
      crates.show()
    end,
  },
  {
    "hrsh7th/nvim-cmp",
    opts = function()
      local M = require "plugins.configs.cmp"
      table.insert(M.sources, {name = "crates"})
      return M
    end,
  }
}
return plugins
