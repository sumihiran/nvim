local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end

return require('packer').startup(function(use)
   -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- UI
  use {
    'kyazdani42/nvim-tree.lua',
    requires = {
      'kyazdani42/nvim-web-devicons', 
    }
  }
  -- Autocompletion
  use "hrsh7th/nvim-cmp"

  -- LSP
  use "neovim/nvim-lspconfig"
  use "hrsh7th/cmp-nvim-lsp"
  use "ray-x/lsp_signature.nvim"

  if packer_bootstrap then
    require('packer').sync()
  end
end)
