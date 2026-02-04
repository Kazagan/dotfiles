return {
    "nvim-treesitter/nvim-treesitter", 
    branch = 'main',
    lazy = false,
    build = ":TSUpdate",
    highlight = {
        disable = {"tmux"}
    }
}

