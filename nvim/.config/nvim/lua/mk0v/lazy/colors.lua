function ColorMyPencils(color)
  color = color or 'kanagawa'
  vim.cmd.colorscheme(color)
end

return {
  'rebelot/kanagawa.nvim',

  priority = 1000,

  config = function()
    require("kanagawa").setup({
      undercurl = true,
      transparent = true,
      terminalColors = true,
      theme = "wave"
    })

    ColorMyPencils()
  end
}
