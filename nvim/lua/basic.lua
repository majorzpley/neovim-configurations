-- 此文件仅仅针对neovim的基础设置
-- 1.字符编码格式:utf8
vim.g.encoding = "UTF-8"
vim.o.fileencoding = 'utf-8'
-- 2.jkhl 移动时光标周围保留8行
vim.o.scrolloff = 8
vim.o.sidescrolloff = 8
-- 3.使用相对行号
vim.wo.number = true
vim.wo.relativenumber = true
-- 4.高亮所在行
vim.wo.cursorline = true
-- 5.显示左侧图标指示列
vim.wo.signcolumn = "yes"
-- 6.右侧参考线，超过表示代码太长了，考虑换行
vim.wo.colorcolumn = "80"
-- 7.缩进2个空格等于一个Tab
vim.o.tabstop = 2
vim.bo.tabstop = 2
vim.o.softtabstop = 2
vim.o.shiftround = true
-- 8.>> << 时移动长度
vim.o.shiftwidth = 2
vim.bo.shiftwidth = 2
-- 9.空格替代tab
vim.o.expandtab = true
vim.bo.expandtab = true
-- 10.新行对齐当前行
vim.o.autoindent = true
vim.bo.autoindent = true
vim.o.smartindent = true
-- 11.搜索大小写不敏感，除非包含大写
vim.o.ignorecase = true
vim.o.smartcase = true
-- 12.搜索不要高亮
vim.o.hlsearch = false
-- 13.边输入边搜索
vim.o.incsearch = true
-- 14.命令行高为2，提供足够的显示空间
vim.o.cmdheight = 2
-- 15.当文件被外部程序修改时，自动加载
vim.o.autoread = true
vim.bo.autoread = true
-- 16.禁止折行
vim.wo.wrap = false
-- 17.光标在行首尾时<Left><Right>可以跳到下一行
vim.o.whichwrap = '<,>,[,]'
-- 18.允许隐藏被修改过的buffer
vim.o.hidden = true
-- 19.鼠标支持
vim.o.mouse = "a"
-- 20.禁止创建备份文件
vim.o.backup = false
vim.o.writebackup = false
vim.o.swapfile = false
-- 21.smaller updatetime
-- 22.设置 timeoutlen 为等待键盘快捷键连击时间1000毫秒，可根据需要设置
vim.o.updatetime = 300
vim.o.timeoutlen = 1000
-- 23.split window 从下边和右边出现
vim.o.splitbelow = true
vim.o.splitright = true
-- 24.自动补全不自动选中
vim.g.completeopt = "menu,menuone,noselect,noinsert"
-- 25.样式
vim.o.background = "dark"
vim.o.termguicolors = true
vim.opt.termguicolors = true
-- 26.不可见字符的显示，这里只把空格显示为一个点
vim.o.list = true
vim.o.listchars = "space:·"
-- 27.补全增强
vim.o.wildmenu = true
-- 28.Dont' pass messages to |ins-completin menu|
vim.o.shortmess = vim.o.shortmess .. 'c'
-- 29.补全最多显示10行
vim.o.pumheight = 10
-- 30.永远显示 tabline
vim.o.showtabline = 2
-- 31.使用增强状态栏插件后不再需要 vim 的模式提示
vim.o.showmode = false
-- 32.配置输入法切换的能力,1033 是英文输入法的代码，需要在设置-语言中提前添加英语(美国)。
vim.cmd('autocmd InsertLeave * :silent :!C:\\Users\\wyx12\\AppData\\Local\\im-select-master\\win\\out\\x64\\im-select.exe && C:\\Users\\wyx12\\AppData\\Local\\im-select-master\\win\\out\\x64\\im-select.exe 1033')
vim.cmd('autocmd InsertEnter * :silent :!C:\\Users\\wyx12\\AppData\\Local\\im-select-master\\win\\out\\x64\\im-select.exe && C:\\Users\\wyx12\\AppData\\Local\\im-select-master\\win\\out\\x64\\im-select.exe 2052')
-- 33.设置折叠方法为 indent
vim.opt.foldmethod = 'indent'
-- 34.使用系统剪贴板
vim.opt.clipboard = 'unnamedplus'