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
    config = function()
      vim.fn["mkdp#util#install"]()
    end,
    dependencies = "rcarriga/nvim-dap-ui"
  },
  {
    'saecki/crates.nvim',
    dependencies = "hrsh7th/nvim-cmp",
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
  },
  {
    "rcarriga/nvim-dap-ui",
    config = function ()
      require("custom.configs.nvim-dap-ui")
    end
  },
  {
    "hrsh7th/cmp-nvim-lsp-signature-help",
    dependencies = "hrsh7th/nvim-cmp",
  },
  {
    "nvim-orgmode/orgmode",
    ft = "org",
    config = function ()
      require("custom.configs.org-mode")
    end
  },
  {
    "iamcco/markdown-preview.nvim",
    ft = "markdown",
    config = function ()
      vim.fn["mkdp#util#install"]()
    end
  },
  -- {
  --   "ianding1/leetcode.vim",
  --   config = function ()
  --     local enable_providers = {
  --       "python3_provider",
  --       "node_provider",
  --       -- and so on
  --     }
  --     for _, plugin in pairs(enable_providers) do
  --       vim.g["loaded_" .. plugin] = nil
  --       vim.cmd("runtime " .. plugin)
  --     end
  --   end
  -- }
}
return plugins
