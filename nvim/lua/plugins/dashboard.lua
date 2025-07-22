return {
  "folke/snacks.nvim",
  opts = {
    dashboard = {
      preset = {
        header = table.concat({
          "██████   ██████  ███    ██  ██████   ██████ ",
          "██   ██ ██    ██ ████   ██ ██    ██ ██    ██",
          "██████  ██    ██ ██ ██  ██ ██       ██    ██",
          "██   ██ ██    ██ ██  ██ ██ ██ █████ ██    ██",
          "██████   ██████  ██   ████  ███████  ██████ ",
          "",
          "███     ██ ██    ██ ██ ███    ███",
          "█████   ██ ██    ██ ██ ████  ████",
          "███ ██  ██ ██    ██ ██ ██ ████ ██",
          "███  ██ ██  ██  ██  ██ ██  ██  ██",
          "███   ████   ████   ██ ██      ██",
        }, "\n"),

        footer = {function()
          local stats = require("lazy.stats")
          return string.format("⚡ BongoNvim loaded %d/%d plugins in %.2fms", stats.loaded, stats.count, stats.startuptime)
        end,
        }
      },
    },
  },
}

