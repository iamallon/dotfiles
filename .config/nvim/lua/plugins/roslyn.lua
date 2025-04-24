return
{
  "seblyng/roslyn.nvim",
  event = { "BufReadPre", "BufNewFile" },
  config = function()
    require("roslyn").setup {
      config = {
        settings = {
          ["csharp|completion"] = {
            dotnet_provide_regex_completions = true,
            dotnet_show_completion_items_from_unimported_namespaces = true,
            dotnet_show_name_completion_suggestions = true
          },
          ["csharp|formatting"] = {
            dotnet_organize_imports_on_format = true
          },
        },
      },
      filewatching = false,
      broad_search = true,
    }
  end
}
