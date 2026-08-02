return {
  'nvim-treesitter/nvim-treesitter-context',
  dependencies = { 'nvim-treesitter/nvim-treesitter' },
  event = 'VeryLazy',
  config = function()
    require('treesitter-context').setup {
      enable = true, -- Enable this plugin (can be disabled for large files)
      max_lines = 3, -- How many lines of context to show
      min_window_height = 0, -- Minimum editor window height to enable context
      multiline_threshold = 20, -- Max number of lines to collapse
      trim_scope = 'outer', -- Which context lines to discard if too long
      mode = 'cursor', -- Options: "cursor", "topline"
      separator = nil, -- You can set e.g. "─" or "▁" to visually separate
    }
  end,
}
