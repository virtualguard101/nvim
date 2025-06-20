require("basic")
require("functions")
require("custom")
require("indent")
require("utils.dotenv").load(".env")
require("lazy-nvim") -- Set up plugins
require("theme")
require("keymaps")
require("hightlight")
require("profiler").analyse_config()
