return {
    {
        "nvim-treesitter/nvim-treesitter",
        branch = "master",
        lazy = false,
        build = ":TSUpdate",
        config = function()
            require("nvim-treesitter.configs").setup({
                ensure_installed = {
                    "bash", "c", "cmake", "cpp", "css", "diff", "fish", "gitcommit", "html", "java",
                    "javadoc", "javascript", "json", "lua", "luadoc", "make", "markdown", "markdown_inline",
                    "php", "php_only", "python", "sql", "toml", "vim", "vimdoc", "yaml"
                },
                highlight = {
                    enable = true
                }
            })
        end
    },
    {
        "nvim-treesitter/nvim-treesitter-textobjects",
        branch = "master"
    }
}
