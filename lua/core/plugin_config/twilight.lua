require('twilight').setup({
  dimming = {
    alpha = 0.25, -- amount of dimming
    -- we try to get the foreground from the highlight groups or fallback color
    color = { 'Normal', '#ffffff' },
  },
  context = 10,
  treesitter = false,
  expand = {},
  exclude = {}, -- exclude these filetypes
})


