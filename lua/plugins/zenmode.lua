return{
    "folke/zen-mode.nvim",
    opts = {
        window = {
            options = {
                number = false,
                relativenumber=false,
            },
        },
        plugins ={
            alacritty = {
                enabled = true,
                font = "16",
            },
        },
        on_open = function(win)
            vim.opt.wrap = true
            vim.opt.breakindent = true
            vim.opt.linebreak = true
        end,
        on_close = function()
            vim.opt.wrap = false
            vim.opt.breakindent = false
            vim.opt.linebreak = false
        end,

    }
}
