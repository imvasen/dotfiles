return {
  "lalitmee/cobalt2.nvim",
  enabled = false,
  event = { "ColorSchemePre" }, -- if you want to lazy load
  dependencies = { "tjdevries/colorbuddy.nvim", tag = "v1.0.0" },
  init = function()
    require("colorbuddy").colorscheme("cobalt2")
    end,
}
