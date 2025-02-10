local popup = require("plenary.popup")

local window_id

function ShowMenu(options, callback)
  local height = 20
  local width = 70

  window_id = popup.create(options, {
    title = "Todo",
    highlight = "Todo",
    line = math.floor(((vim.o.lines - height) / 2) - 1),
    col = math.floor(((vim.o.columns - width) / 2)),
    minwidth = width,
    minheight = height,
    borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
    callback = callback
  })
  local bufnr = vim.api.nvim_win_get_buf(window_id)
  vim.api.nvim_buf_set_keymap(bufnr, "n", "q", "<cmd>lua CloseMenu()<CR>", { silent = false })
end

function CloseMenu()
  vim.api.nvim_win_close(window_id, true)
end

function Todo()
  local file = io.open("~/todo.md", "w")
  local options = {}
  local callback = function (_, sel)
    print("it works")
  end
  ShowMenu(options, callback)
end

vim.keymap.set("n", "<leader>to", "<cmd>lua Todo()<CR>")
