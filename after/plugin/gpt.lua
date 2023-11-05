require("chatgpt").setup({
    keymaps = {
        submit = "<C-s>"
    },
    chat = {
        keymaps = {
            close = { "<C-q>" },
        }
    },
    popup_input = {
        max_visible_lines = 20000,
    },
    api_key_cmd = "getgpt",
});
