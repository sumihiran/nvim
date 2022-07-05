local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
   -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Terminal
  use {
    'nvim-lualine/lualine.nvim',
    requires = { 'kyazdani42/nvim-web-devicons', opt = true }
  }
  use "akinsho/toggleterm.nvim"

  -- UI
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', 
    }
  }
  use "folke/which-key.nvim"
    
  -- Editor
  use "windwp/nvim-autopairs" -- Autopairs, integrates with both cmp and treesitter

  -- Autocompletion
  use "hrsh7th/nvim-cmp"
  use "hrsh7th/cmp-buffer" -- buffer completions
  use "hrsh7th/cmp-path" -- path completions
  use "hrsh7th/cmp-cmdline" -- cmdline completions
  use "saadparwaiz1/cmp_luasnip" -- snippet completions
  use "hrsh7th/cmp-nvim-lsp"
  use "hrsh7th/cmp-emoji"
  use "hrsh7th/cmp-nvim-lua"
  use 'onsails/lspkind-nvim'

  -- Snippets
  use "L3MON4D3/LuaSnip" --snippet engine
  use "rafamadriz/friendly-snippets"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "williamboman/nvim-lsp-installer"
  use "ray-x/lsp_signature.nvim"
  use "jose-elias-alvarez/null-ls.nvim" 
  
  use "b0o/schemastore.nvim" -- json schema support
  use 'simrat39/rust-tools.nvim' -- extra rust tooling

  -- Telescope
  use {
    'nvim-telescope/telescope.nvim',
    requires = { {'nvim-lua/plenary.nvim'} }
  }

  use "tom-anders/telescope-vim-bookmarks.nvim"
  use "nvim-telescope/telescope-media-files.nvim"
  use "lalitmee/browse.nvim"

  -- Treesitter
  use "nvim-treesitter/nvim-treesitter"
  use "nvim-treesitter/playground"
  use "drybalka/tree-climber.nvim"
  use "p00f/nvim-ts-rainbow"

  -- Colorschemes
  use { "ellisonleao/gruvbox.nvim" }

  -- Git
  use "lewis6991/gitsigns.nvim"
  use "f-person/git-blame.nvim"
  use "ruifm/gitlinker.nvim"
  use "mattn/vim-gist"
  use "mattn/webapi-vim"

  if packer_bootstrap then
    require('packer').sync()
  end
end)
