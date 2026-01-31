return {
    "saghen/blink.cmp",
    version = "1.*",
    dependencies = {
        "rafamadriz/friendly-snippets",
        "giuxtaposition/blink-cmp-copilot",
    },
    opts = {
        keymap = {
            preset = "none",
            ['<C-space>'] = { 'show', 'show_documentation', 'hide_documentation' },
            ['<C-e>'] = { 'hide', 'fallback' },
            ['<C-y>'] = { 'select_and_accept', 'fallback' },

						['<C-p>'] = { 'select_prev', 'fallback_to_mappings' },
            ['<C-n>'] = { 'select_next', 'fallback_to_mappings' },

            ['<C-b>'] = { 'scroll_documentation_up', 'fallback' },
            ['<C-f>'] = { 'scroll_documentation_down', 'fallback' },

            ['<C-k>'] = { 'snippet_forward', 'fallback' },
            ['<C-j>'] = { 'snippet_backward', 'fallback' },

            ['<C-s>'] = { 'show_signature', 'hide_signature', 'fallback' },
        },
        completion = {
            menu = {
							border = "rounded",
							winhighlight = "Normal:BlinkCmpMenu,FloatBorder:BlinkCmpMenuBorder,CursorLine:BlinkCmpMenuSelection,Search:None"
						},
						documentation = {
								window = {
									border = 'rounded',
								},
                auto_show = false
            }
        },
        signature = {
            enabled = true
        },
        sources = {
            default = { "lsp", "path", "snippets", "buffer"},

	}
    }
}
