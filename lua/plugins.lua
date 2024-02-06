return require("packer").startup(function(use)
  -- Packer can manage itself
  use {"wbthomason/packer.nvim"}

  -- Monokai theme
  use {"tanvirtin/monokai.nvim"}

  -- gitsigns
  use {
    "lewis6991/gitsigns.nvim",
    requires = { "nvim-lua/plenary.nvim" },
    config = function() require("plugins.gitsigns") end
  }

  -- barbar
  use {
    "romgrk/barbar.nvim",
    requires = {"kyazdani42/nvim-web-devicons"},
    config = function() require("plugins.barbar") end
  }

  -- ghcid
  use {"ndmitchell/ghcid", rtp = "plugins/nvim"}

  use {
    "williamboman/mason.nvim",
    "williamboman/mason-lspconfig.nvim",
  }

  require("mason").setup()
  require("mason-lspconfig").setup()

  use {
    "neovim/nvim-lspconfig",
    config = function() require("plugins.nvim-lspconfig") end
  }

end)

