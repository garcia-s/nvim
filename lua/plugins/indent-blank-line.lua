return {
    "lukas-reineke/indent-blankline.nvim",
    lazy = false,
    config = function()
        require("ibl").setup {
            exclude = {
                filetypes = {
                    "dashboard",
                },
                buftypes = {
                    "terminal",
                    "nofile",
                    "quickfix",
                    "prompt",
                }
            }
        }
    end
}
