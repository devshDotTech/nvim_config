return {
  "akinsho/bufferline.nvim",
  dependencies = { "nvim-tree/nvim-web-devicons" },
  opts = {
    options = {
      mode = "buffers",
      separator_style = { 'any', '|' },
    offsets = {{filetype = "NvimTree", text = " ", text_align = "center"}},
    },
  }
}

