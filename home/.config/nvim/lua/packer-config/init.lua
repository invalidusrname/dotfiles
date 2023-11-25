local fn = vim.fn
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'

if fn.empty(fn.glob(install_path)) > 0 then
  print("cloning packer!")
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
  vim.cmd [[packadd packer.nvim]]
end

return require('packer').startup(function(use)
  use 'wbthomason/packer.nvim'

  use 'editorconfig/editorconfig-vim'
  use 'andymass/vim-matchup'
  use 'williamboman/mason.nvim'
  use 'maxmx03/solarized.nvim'

  use {
    'kyazdani42/nvim-tree.lua',
    requires = { 'kyazdani42/nvim-web-devicons' }
    --config = function() require'nvim-tree'.setup {} end
  }


  -- Automatically set up your configuration after cloning packer.nvim
  -- Put this at the end after all plugins
  if packer_bootstrap then
    require('packer').sync()
  end
end)
