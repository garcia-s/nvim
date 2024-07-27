return {
    'nyoom-engineering/oxocarbon.nvim',
    lazy = false,
    priority = 1000,
    config = function()
        vim.opt.background = "dark"
        vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
        vim.api.nvim_set_hl(0, "NormalFloat", { bg = "none" })
        vim.api.nvim_set_hl(0, "TabLine", { bg = "none" })
        vim.api.nvim_set_hl(0, "TabLineFill", { bg = "none" })
        vim.api.nvim_set_hl(0, "TabLineSelect", { bg = "none" })
        vim.api.nvim_set_hl(0, 'LineNrAbove', { bg = 'none' })
        vim.api.nvim_set_hl(0, 'LineNrBelow', { bg = "none" })
        vim.cmd("colorscheme oxocarbon")
    end
}
