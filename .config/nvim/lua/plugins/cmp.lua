return
{
    "hrsh7th/nvim-cmp",
    tag = "v0.0.2",
    dependencies = {
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "windwp/nvim-autopairs"
    },
    config = function()
        local luasnip = require("luasnip")
        local cmp = require("cmp")
        local cmp_select = { behavior = cmp.SelectBehavior.Select }
        local cmp_autopairs = require("nvim-autopairs.completion.cmp")

        cmp.event:on(
            "confirm_done",
            cmp_autopairs.on_confirm_done(
            )
        )

        cmp.setup({
            snippet = {
                expand = function(args)
                    require('luasnip').lsp_expand(args.body)
                end
            },
            mapping = {
                ["<C-p>"] = cmp.mapping.select_prev_item(cmp_select),
                ["<C-n>"] = cmp.mapping.select_next_item(cmp_select),
                ["<CR>"] = cmp.mapping.confirm({ select = true }),
                ["<C-Space>"] = cmp.mapping.complete(),
                ["<Tab>"] = cmp.mapping(function(fallback)
                    if cmp.visible() then
                        cmp.select_next_item()
                    elseif luasnip.locally_jumpable(1) then
                        luasnip.jump(1)
                    else
                        fallback()
                    end
                end, { "i", "s" })
            },
            sources = cmp.config.sources({
                { name = "nvim_lsp" },
                { name = "luasnip" }
            }, {
                { name = "buffer" },
            })
        })
    end
}
