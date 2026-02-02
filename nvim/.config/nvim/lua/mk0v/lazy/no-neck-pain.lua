return {
  'shortcuts/no-neck-pain.nvim',
  version = '*',
  config = function()
    local noneck = require('no-neck-pain')

    noneck.setup({
      buffers = {

        right = {
          enabled = true,
          scratchPad = {
            enabled = true,
            -- location = "~/notes/",
            -- fileName = "dev-notes.md"
            pathToFile = "~/notes/dev-notes.md" -- Use direct path to file
          },
        },

        scratchPad = {
          enabled = true,
          location = "~/notes/scratch-pad/"
        },

        bo = {
          filetype = "md"
        }
      },
      width = 100
    })

    vim.keymap.set('n', '<leader>nn', noneck.toggle)
    vim.keymap.set('n', '<leader>nh', function() noneck.toggle_side('left') end)
    vim.keymap.set('n', '<leader>n;', function() noneck.toggle_side('right') end)
  end
}
