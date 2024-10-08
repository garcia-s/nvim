return {
    "williamboman/mason.nvim",
    dependencies = {
        "williamboman/mason-lspconfig.nvim",
    },
    config = function()
        require("mason-lspconfig").setup({
            automatic_installation = true,
        })
        require("mason").setup()
    end,
}
