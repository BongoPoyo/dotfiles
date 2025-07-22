---@type LazySpec
return {
  "goolord/alpha-nvim",
  opts = function(_, opts)
    -- replace header with custom ASCII art
    opts.section.header.val = {
      "██████   ██████  ███    ██  ██████   ██████ ",
      "██   ██ ██    ██ ████   ██ ██    ██ ██    ██",
      "██████  ██    ██ ██ ██  ██ ██       ██    ██",
      "██   ██ ██    ██ ██  ██ ██ ██ █████ ██    ██",
      "██████   ██████  ██   ████  ███████  ██████ ",
      "",
      "     ███     ██ ██    ██ ██ ███    ███",
      "     █████   ██ ██    ██ ██ ████  ████",
      "     ███ ██  ██ ██    ██ ██ ██ ████ ██",
      "     ███  ██ ██  ██  ██  ██ ██  ██  ██",
      "     ███   ████   ████   ██ ██      ██",
    }
    -- Footer
    local stats = require("lazy").stats()
    local ms = math.floor(stats.startuptime * 100 + 0.5) / 100
    opts.section.footer.val = "BongoNvim loaded "
      .. stats.loaded
      .. "/"
      .. stats.count
      .. " plugins  in "
      .. ms
      .. "ms"
  end,
}
