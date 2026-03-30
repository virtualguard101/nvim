---@diagnostic disable: undefined-global
vim.o.timeout = true
vim.o.timeoutlen = 300

require("which-key").setup()

require("which-key").add({
  { "<leader>h", desc = "Highlight Turn OFF" },
  { "<leader>n", desc = "Nvim Tree Toogle" },

  { "<leader>b", group = "Buffer Tabs" },
  { "<leader>bq", desc = "Quit Tab (Close current tab)" },
  { "<leader>bc", desc = "Quit all Tabs (but not PIN & Current)" },
  { "<leader>bs", desc = "Select a Tab by its letter" },
  { "<leader>bp", desc = "PIN a Tab" },
  { "<leader>b<Left>", desc = "Previous Tab" },
  { "<leader>b<Right>", desc = "Next Tab" },

  { "<leader>d", group = "Debugging" },
  { "<leader>db", desc = "Toggle Breakpoint" },
  { "<leader>dc", desc = "Continue" },
  { "<leader>di", desc = "Step Into" },
  { "<leader>do", desc = "Step Over" },

  { "<leader>f", group = "Telescope" },
  { "<leader>ff", desc = "Find all Files in the project" },
  { "<leader>fr", desc = "Find in Recently opened files" },
  { "<leader>fg", desc = "Live Grep in the project" },
  { "<leader>fb", desc = "Switch Buffers" },
  { "<leader>fh", desc = "Help Tags" },
  { "<leader>fu", desc = "Telescope undo" },
  { "<leader>ft", desc = "Todo Comments Browser" },

  { "<leader>t", group = "Terminal" },
  { "<leader>tf", desc = "Toggle Floating" },
  { "<leader>th", desc = "Toggle Horizontal -- (x-axis)" },
  { "<leader>tv", desc = "Toggle Vertical | (y-axis)" },
})
