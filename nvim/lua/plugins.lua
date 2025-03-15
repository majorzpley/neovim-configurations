-- -- 通过 packer 安装插件
-- return require('packer').startup(function(use)
--     -- Packer 可以管理自己
--     use 'wbthomason/packer.nvim'
--     -- 安装其他插件
-- end)
-- 此文件用于管理neovim的插件
local packer = require("packer")
packer.startup(
  function(use)
   -- Packer 可以管理自己本身
   use 'wbthomason/packer.nvim'
   -- 你的插件列表...
    --------------------- colorschemes --------------------
    -- tokyonight
    use("folke/tokyonight.nvim")
    -------------------------------------------------------
end)

-- 每次保存 plugins.lua 自动安装插件
pcall(
  vim.cmd,
  [[
    augroup packer_user_config
    autocmd!
    autocmd BufWritePost plugins.lua source <afile> | PackerSync
    augroup end
  ]]
)
