return {
    "lervag/vimtex",
    ft = "tex",
    config = function()
        vim.cmd[[filetype plugin on]]

        vim.g.vimtex_view_method = "zathura_simple"

        vim.opt.conceallevel = 2
        vim.opt.concealcursor = "nc"
        vim.cmd[[hi! link texMathEnvArgName texEnvArgName]]
        vim.cmd[[hi! link texMathZone LocalIdent]]
        vim.cmd[[hi! link texMathZoneEnv texMathZone]]
        vim.cmd[[hi! link texMathZoneEnvStarred texMathZone]]
        vim.cmd[[hi! link texMathZoneX texMathZone]]
        vim.cmd[[hi! link texMathZoneXX texMathZone]]
        vim.cmd[[hi! link texMathZoneEnsured texMathZone]]
        vim.cmd[[hi! link Conceal LocalIdent]]
    end,
}
