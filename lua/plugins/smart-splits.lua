return {
  {
    "mrjones2014/smart-splits.nvim",
    lazy = false,
    config = function()
      require("smart-splits").setup {
        at_edge = "wrap",
        resize_mode = {
          quit_key = "<Esc>",
          resize_keys = { "h", "j", "k", "l" },
        },
      }
    end,
  },
}
