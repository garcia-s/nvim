local function rename()

    local width = 40
    local height = 1
    local opts = {
        row = -3,
        col = -1,
        relative = "cursor",
        width = width,
        height = height,
        style = 'minimal',
        title_pos = "center",
        border = "double",
    }

    local cword = vim.fn.expand('<cword>')

    opts.title = "Rename " .. cword
    local buf = vim.api.nvim_create_buf(false, true)
    local win = vim.api.nvim_open_win(buf, true, opts)
    vim.cmd("startinsert!")
    local fmt = '<cmd>lua Rename.dorename(%d)<CR>'

    vim.api.nvim_buf_set_lines(buf, 0, -1, false, {})
    vim.keymap.set("n", "<C-c>",
        function() vim.api.nvim_win_close(win, true) end,
        { buffer = buf, nowait = true, silent = true }
    )

    vim.keymap.set("n", "<Esc>",
        function() vim.api.nvim_win_close(win, true) end,
        { buffer = buf, nowait = true, silent = true }
    )
    vim.api.nvim_buf_set_keymap(buf, 'i', '<CR>', string.format(fmt, win), { silent = true })
end

local function dorename(win)
    local new_name = vim.trim(vim.fn.getline('.'))
    vim.api.nvim_win_close(win, true)
    vim.lsp.buf.rename(new_name)
end

_G.Rename = {
    rename = rename,
    dorename = dorename
}
