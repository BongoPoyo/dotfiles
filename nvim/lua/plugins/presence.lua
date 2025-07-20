return {
  "andweeb/presence.nvim",
  lazy = false, -- load immediately
  config = function()
    require("presence").setup {
      -- Optional: customize your rich presence here
      auto_update = true,
      neovim_image_text = "Neovim IDE",
      main_image = "file", -- or "neovim"
      client_id = "793271441293967371", -- official Neovim RP app
      enable_line_number = true,
      buttons = true,
      show_time = true,
    }
  end,
}
