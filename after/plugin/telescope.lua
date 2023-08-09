local builtin = require('telescope.builtin')



local function isGit()
    local path = vim.loop.cwd() .. "/.git"
    local ok, _ = vim.loop.fs_stat(path)
    print(path)
    if ok then
        return true
    end
    return false
end



vim.keymap.set('n', '<leader>g', builtin.git_files)
vim.keymap.set('n', '<leader>f', builtin.find_files)




