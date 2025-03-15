if vim.g.VSCode then
    -- VSCode extension
-- 插件 需要先安装packer才能使用
require('plugins')  
-- 基础设置
require('basic')
-- 按键设置
require('keybindings')
else
    -- ordinary Neovim
-- 插件 需要先安装packer才能使用
require('plugins')  
-- 基础设置
require('basic')
-- 按键设置
require('keybindings')
-- 主题设置
require("colorscheme")
end


