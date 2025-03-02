-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
  'nvim-orgmode/orgmode',
  event = 'VeryLazy',
  ft = { 'org' },
  config = function()
    -- Setup orgmode
    require('orgmode').setup {
      org_agenda_files = '~/org/**/*',
      org_default_notes_file = '~/org/refile.org',
    }

    -- NOTE: If you are using nvim-treesitter with ~ensure_installed = "all"~ option
    -- add ~org~ to ignore_install
    -- require('nvim-treesitter.configs').setup({
    --   ensure_installed = 'all',
    --   ignore_install = { 'org' },
    -- })
  end,
}
--{
--  'nvim-orgmode/telescope-orgmode.nvim',
--  event = 'VeryLazy',
--  dependencies = {
--   'nvim-orgmode/orgmode',
--   'nvim-telescope/telescope.nvim',
--  },
--  config = function()
--    require('telescope').load_extension 'orgmode'
--
--    vim.keymap.set('n', '<leader>ro', require('telescope').extensions.orgmode.refile_heading)
--    vim.keymap.set('n', '<leader>so', require('telescope').extensions.orgmode.search_headings)
--    vim.keymap.set('n', '<leader>io', require('telescope').extensions.orgmode.insert_link)
--  end,
--}
