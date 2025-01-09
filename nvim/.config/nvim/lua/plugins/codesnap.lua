return {
  "mistricky/codesnap.nvim",
  build = "make build_generator",
  keys = {
    { "<leader>ts", "<cmd>CodeSnapSave<cr>", mode = "v", desc = "Save selected code snapshot in ~/Desktop" },
  },
  opts = {
    save_path = "~/Desktop",
    has_breadcrumbs = false,
    bg_theme = "sea",
    watermark = ""
  },
}
