-- 此文件针对neovim的快捷键进行了设置
-- 1.leader 键
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
-- 由于要设置很多快捷键，所以先保存本地变量
local map = vim.api.nvim_set_keymap
-- 复用 opt 参数
local opt = {noremap = true, silent = true }

-- 2.窗口管理快捷键映射
-- 取消 s 默认功能
map("n", "s", "", opt)
-- Terminal相关
map("n", "<leader>t", ":sp | terminal<CR>", opt)
map("n", "<leader>vt", ":vsp | terminal<CR>", opt)
map("t", "<Esc>", "<C-\\><C-n>", opt)
map("t", "<A-h>", [[ <C-\><C-N><C-w>h ]], opt)
map("t", "<A-j>", [[ <C-\><C-N><C-w>j ]], opt)
map("t", "<A-k>", [[ <C-\><C-N><C-w>k ]], opt)
map("t", "<A-l>", [[ <C-\><C-N><C-w>l ]], opt)
-- visual模式下缩进代码
map("v", "<", "<gv", opt)
map("v", ">", ">gv", opt)
-- 上下移动选中文本
map("v", "U", ":move '<-2<CR>gv-gv", opt)
map("v", "D", ":move '>+1<CR>gv-gv", opt)
-- 上下滚动浏览
map("n", "<C-j>", "4j", opt)
map("n", "<C-k>", "4k", opt)
-- ctrl u / ctrl + d  只移动9行，默认移动半屏
map("n", "<C-u>", "9k", opt)
map("n", "<C-d>", "9j", opt)
-- 在visual 模式里粘贴不要复制
map("v", "p", '"_dP', opt)
-- insert 模式下，跳到行首行尾
map("i", "<C-h>", "<ESC>I", opt)
map("i", "<C-l>", "<ESC>A", opt)

-- 1.更安全的常规保存
-- vim.keymap.set('n', '<Leader>s', ':w<CR>', opt)
map("n", "<Leader>s", ":w<CR>", opt)
-- 2.更安全的常规关闭
-- map("n", "<Leader>q", ":q<CR>", opt)
map("n", "<Leader>q", ":call VSCodeNotify('workbench.action.closeActiveEditor')<CR>", opt)
-- 3.大写 H 和 L 行首和行尾
vim.keymap.set('n', 'H', '^')
vim.keymap.set('n', 'L', '$')
-- 4.大写 J 和 K 跳转5行
vim.keymap.set('n', 'J', '5j')
vim.keymap.set('n', 'K', '5k')
-- 5.打开此init.lua文件，方便修改
if vim.g.vscode then
    vim.cmd('nmap <leader>ev :e C:\\Users\\wyx12\\AppData\\Local\\nvim\\init.lua<cr>')
    -- 6.折叠代码
    map('n', 'zR', ":call VSCodeNotify('editor.unfoldAll')<CR>", opt)
    map('n', 'zA', ":call VSCodeNotify('editor.foldAll')<CR>", opt)
    map('n', 'zo', ":call VSCodeNotify('editor.unfold')<CR>", opt)
    map('n', 'zc', ":call VSCodeNotify('editor.fold')<CR>", opt)

    -- 7.windows 分屏快捷键
    map("n", "sv", ":call VSCodeNotify('workbench.action.splitEditorRight')<CR>", opt)
    map("n", "sh", ":call VSCodeNotify('workbench.action.splitEditorDown')<CR>", opt)
    -- 关闭当前
    -- map("n", "sc", "<C-w>c", opt)
    map("n", "sc", ":call VSCodeNotify('workbench.action.closeActiveEditor')<CR>", opt)
    -- 关闭其他
    -- map("n", "so", "<C-w>o", opt)
    map("n", "so", ":call VSCodeNotify('workbench.action.closeOtherEditors')<CR>", opt)
    -- Alt + hjkl  窗口之间跳转
    -- map("n", "<A-h>", "<C-w>h", opt)
    -- map("n", "<A-j>", "<C-w>j", opt)
    -- map("n", "<A-k>", "<C-w>k", opt)
    -- map("n", "<A-l>", "<C-w>l", opt)
    -- map("n", "<A-h>", ":call VSCodeNotify('workbench.action.focusLeftGroup')<CR>", opt)
    -- 左右比例控制
    map("n", "<C-Left>", ":vertical resize -2<CR>", opt)
    map("n", "<C-Right>", ":vertical resize +2<CR>", opt)
    map("n", "s,", ":vertical resize -20<CR>", opt)
    map("n", "s.", ":vertical resize +20<CR>", opt)
    -- 上下比例
    map("n", "sj", ":resize +10<CR>", opt)
    map("n", "sk", ":resize -10<CR>", opt)
    map("n", "<C-Down>", ":resize +2<CR>", opt)
    map("n", "<C-Up>", ":resize -2<CR>", opt)
    -- 等比例
    map("n", "s=", "<C-w>=", opt)

end