return
{
  "miikanissi/modus-themes.nvim",
  priority = 1000,
  config = function()
    require("modus-themes").setup{
      variant = "default",
      styles = {
        comments = { italic = false },
        keywords = { italic = false }
      }
    }

    vim.cmd([[colorscheme modus_vivendi]])
  end
}

