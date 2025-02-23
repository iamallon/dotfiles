return
{
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
        require("nordic").setup {
            on_palette = function(palette)
                palette.red.base = palette.blue0
                palette.red.bright = palette.blue1
                palette.red.dim = palette.blue2
                palette.orange.base = palette.blue0
                palette.orange.bright = palette.blue1
                palette.orange.dim = palette.blue2
                palette.yellow.base = palette.white0
                palette.yellow.bright = palette.white1
                palette.yellow.dim = palette.white2
            end,
            on_highlight = function(highlights, palette)
                local U = require("nordic.utils")
                highlights.TelescopeSelection = { bg = U.blend(palette.gray5, palette.bg, 0.50) }
                highlights.TelescopeSelectionCaret = { fg = palette.bg, bg = palette.bg }
                highlights.TelescopeMultiSelection = { bold = true }
                for _, highlight in pairs(highlights) do
                    highlight.italic = false
                end
            end,
            after_palette = function(palette)
                local U = require("nordic.utils")
                palette.bg_visual = U.blend(palette.gray5, palette.bg, 0.50)
                palette.bg = palette.black1
                palette.bg_float = "#000000"
                palette.comment = palette.gray5
            end,
            bold_keywords = true,
            reduced_blue = false,
            telescope = {
                style = "classic"
            },
            transparent = {
                bg = false,
                float = false,
            },
            leap = {
                dim_backdrop = true,
            }
        }

        vim.cmd.colorscheme("nordic")
    end
}
