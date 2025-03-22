return {
  'catppuccin/nvim',
  name = 'catppuccin',
  priority = 1000,

  config = function()
    require('catppuccin').setup({
      flavour = "mocha",
      background = {
        light = "latte",
        dark = "mocha",
      },
      transparent_background = true,
    })

    vim.cmd.colorscheme('catppuccin')
  end
}


-- function ColorMyPencils(color)
--   color = color or 'ca'
--   vim.cmd.colorscheme(color)
-- end
--
-- return {
--   'rebelot/kanagawa.nvim',
--
--   priority = 1000,
--
--   config = function()
--     require("kanagawa").setup({
--       undercurl = true,
--       transparent = true,
--       terminalColors = true,
--       theme = "wave"
--     })
--
--     ColorMyPencils()
--   end
-- }
