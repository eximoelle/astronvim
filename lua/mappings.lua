local ss = require "smart-splits"

return {
  n = {
    -- MOVE: Ctrl + hjkl (одинаково в nvim и WezTerm)
    ["<C-h>"] = { ss.move_cursor_left, desc = "Move left (smart)" },
    ["<C-j>"] = { ss.move_cursor_down, desc = "Move down (smart)" },
    ["<C-k>"] = { ss.move_cursor_up, desc = "Move up (smart)" },
    ["<C-l>"] = { ss.move_cursor_right, desc = "Move right (smart)" },

    -- RESIZE: Alt + hjkl (одинаково в nvim и WezTerm)
    ["<M-h>"] = { ss.resize_left, desc = "Resize left (smart)" },
    ["<M-j>"] = { ss.resize_down, desc = "Resize down (smart)" },
    ["<M-k>"] = { ss.resize_up, desc = "Resize up (smart)" },
    ["<M-l>"] = { ss.resize_right, desc = "Resize right (smart)" },

    -- RESIZE: Alt + arrows (тоже симметрично)
    ["<M-Left>"] = { ss.resize_left, desc = "Resize left (smart)" },
    ["<M-Down>"] = { ss.resize_down, desc = "Resize down (smart)" },
    ["<M-Up>"] = { ss.resize_up, desc = "Resize up (smart)" },
    ["<M-Right>"] = { ss.resize_right, desc = "Resize right (smart)" },
  },
}
