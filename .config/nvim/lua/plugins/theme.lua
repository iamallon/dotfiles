return
{
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nordic").setup {
            on_highlight = function(highlights)
                for _, highlight in pairs(highlights) do
                    highlight.italic = false
                end
            end,
            after_palette = function(palette)
                local U = require("nordic.utils")
                palette.bg_visual = U.blend(palette.gray5, palette.bg, 0.50)
                palette.bg = palette.black0
            end,
            bold_keywords = true,
            leap = {
                dim_backdrop = true,
            },
            ts_context = {
                dark_background = true,
            }
        }

        vim.cmd.colorscheme("nordic")
    end
}
