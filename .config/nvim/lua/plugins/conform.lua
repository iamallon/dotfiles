return
{
  'stevearc/conform.nvim',
  config = function()
    require("conform").setup({
      default_format_opts = {
        lsp_format = "first",
        stop_after_first = true,
        async = true
      },
      formatters_by_ft = {
        lua = { "stylua" },
        cs = { "csharpier" }
      }
    })
  end
}
