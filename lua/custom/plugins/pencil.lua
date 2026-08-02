return {
  'preservim/vim-pencil',
  -- Lazy load the plugin only for specific filetypes
  ft = { 'markdown', 'text', 'tex', 'gitcommit' },
  config = function()
    -- Set default wrap mode: 'soft' (visual wrap) or 'hard' (inserts line breaks)
    vim.g['pencil#wrapModeDefault'] = 'soft'

    -- Create an autocommand to initialize pencil automatically
    local pencil_group = vim.api.nvim_create_augroup('PencilInit', { clear = true })
    vim.api.nvim_create_autocmd('FileType', {
      group = pencil_group,
      pattern = { 'markdown', 'text', 'tex', 'gitcommit' },
      callback = function()
        vim.fn['pencil#init']()
      end,
    })

    -- Optional: Keymaps to toggle Pencil manually
    vim.keymap.set('n', '<leader>tp', '<cmd>TogglePencil<cr>', { desc = '[T]oggle [P]encil' })
  end,
}
