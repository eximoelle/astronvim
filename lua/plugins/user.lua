-- Если строка ниже не закомментирована — файл отключён
-- if true then return {} end
-- You can also add or configure plugins by creating files in this `plugins/` folder
-- PLEASE REMOVE THE EXAMPLES YOU HAVE NO INTEREST IN BEFORE ENABLING THIS FILE
-- Here are some examples:

---@type LazySpec
return {

  -- == Examples of Adding Plugins ==

  -- "andweeb/presence.nvim",
  -- {
  --   "ray-x/lsp_signature.nvim",
  --   event = "BufRead",
  --   config = function() require("lsp_signature").setup() end,
  -- },

  -- == Examples of Overriding Plugins ==

  -- customize dashboard options
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = {
        preset = {
          header = [[
..................:;;;;.@@Gf@:.i@;@;fC@@.;;;;:.................
..............::...:1LGGf@@0GC@@@@fCC@@fGC@i:...:..............
.............:;;1LCL1@CGGGC0GCfi.@tfLfLCf@@1fLL1;;;............
...........:@@tLGGG0GGLGGGGG@f::.;1tfff111fLLLff@@i;:..........
..........;@@GGGG00GGCGGGCCL@t....:@;;i1fffLLff1111i::.........
.......:@@GGCCGGCCCLLLftf@@t@t:......:;@@@t@@@t@@@i1i;;:.......
......@@@fi@::i@it11111@;;@:ii:........:.@fLCCL@i:..:;i;::.....
.....:@@;@tt@@@@@;;@@:::@@@@@tt;...:;:::.@1t@@;@@@@@:..;:......
......:@...;@@ft@@@@...:@CCLG@GC@.:f@f@1;:;@@@t1i@@@...::......
.......@;....:;@t@@:..@CGG@@GC@@@.@C@@CCC@.:;1t1@:.....:.......
.......;@..:...@@i@::1G00GG@0@@..tGC@GGCft:.;;:................
......:@Gf@:.iLGCi.@C000000GGG@.@LGGGGCf1;;i:.it1;:..;.........
.....:@@@G@:@GC1.@CG00000G@0G@@.@G00G@@ff1@11i..;1i:...........
.....:iLCCCGG@::@CG00GC@G@@GC@..@@GCC@@@@tf;;ii:.:;ii:.........
....:@@LGGC@@:i@CG0G@@@@;@@@@CL@@GC@::::::...;i;::::;ii;.......
....:@LGC@@i;@@@CGGG@@1@@;G@G00@GG@.:t.@@i@@:.;::::;;;;i;:.....
....:@GGC1:::::@@GCGC@1fG@@CG00CGGt;:;:@tttt:.::..:::.:;;;:....
....@@CC@@t1;:..@CGtCGCLLG@C00G@CG@1:::;tt;........:;;:.;;:....
...::LG@fCft@;..:fGL1CL@@@GGCGC@G0Gfti:.:....:....::;ii;:;:....
....@GCCCGGCf@:..@CGC@@CLG@@0GCtfCCf@.;....:;:...:;;iiii;;:....
....1G@CGGC@@@@:..@G0@GCGG@GGCf1tff1.::....::...::;i;ii;;:;:...
....@@@G0f@i;1i::..;tfGCG0@fttffff1;::i.........:;;:;;;;;:.:...
...:::CCGii11i;@@;;..;@CCLL1;.::....:;:.:......:::;;:.::::.....
.....@C@Gf111tfftt@::@GCCC@@GC@..:i@;;;:;:....:;;:::;:::.:.....
.....@@@GLf1LCCLti@@@@@GGCGGGGG@@Cfft1@i;:...:::;;;::;::.......
.....@.1LLttGGLiii:;@@@@@@GGC@@.:itft1;:......::.:;:.::........
.......ii@1@Gf;11ii;:...:@@@@1@@@@1;::........:::..:...........
.......::;i@L111i111;;..:@GGGGG@@CC@f1:........................
............1tt;i1t1f@..:@@@f@@;@@@@;;.........................
............;t1:ii1f@:@i;:::::;.:;:.........::.................
.............ii.:;tf@;tiiii....................................
..............@..:ii:;@;iii;::.................................
          ]],
        },
        sections = {
          { section = "header" },
          { pane = 2, title = "AstroNvim by Eximoelle", padding = 1 },
          {
            pane = 2,
            section = "keys",
            gap = 1,
            indent = 2,
            padding = 1,
          },
          { pane = 2, title = "  Recent Files", padding = 1 },
          {
            pane = 2,
            section = "recent_files",
            indent = 2,
            padding = 1,
          },
          { pane = 2, title = "  Projects", padding = 1 },
          {
            pane = 2,
            section = "projects",
            indent = 2,
            padding = 1,
          },
          { pane = 2, section = "startup" },
        },
      },
    },
  },

  -- You can disable default plugins as follows:
  -- { "max397574/better-escape.nvim", enabled = false },

  -- You can also easily customize additional setup of plugins that is outside of the plugin's setup call
  -- {
  --   "L3MON4D3/LuaSnip",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.luasnip"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom luasnip configuration such as filetype extend or custom snippets
  --     local luasnip = require "luasnip"
  --     luasnip.filetype_extend("javascript", { "javascriptreact" })
  --   end,
  -- },
  --
  -- {
  --   "windwp/nvim-autopairs",
  --   config = function(plugin, opts)
  --     require "astronvim.plugins.configs.nvim-autopairs"(plugin, opts) -- include the default astronvim config that calls the setup call
  --     -- add more custom autopairs configuration such as custom rules
  --     local npairs = require "nvim-autopairs"
  --     local Rule = require "nvim-autopairs.rule"
  --     local cond = require "nvim-autopairs.conds"
  --     npairs.add_rules(
  --       {
  --         Rule("$", "$", { "tex", "latex" })
  --           -- don't add a pair if the next character is %
  --           :with_pair(cond.not_after_regex "%%")
  --           -- don't add a pair if  the previous character is xxx
  --           :with_pair(
  --             cond.not_before_regex("xxx", 3)
  --           )
  --           -- don't move right when repeat character
  --           :with_move(cond.none())
  --           -- don't delete if the next character is xx
  --           :with_del(cond.not_after_regex "xx")
  --           -- disable adding a newline when you press <cr>
  --           :with_cr(cond.none()),
  --       },
  --       -- disable for .vim files, but it work for another filetypes
  --       Rule("a", "a", "-vim")
  --     )
  --   end,
  -- },
  --
}
