local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
    vim.fn.system({
        "git",
        "clone",
        "--filter=blob:none",
        "https://github.com/folke/lazy.nvim.git",
        lazypath,
    })
end
vim.opt.rtp:prepend(lazypath)
require("lazy").setup({ { import =  "tanjiro.plugins" }, { import = "tanjiro.plugins.lsp" } },
{
  checker = {
    enable = true,
    notify = false,
  },
  change_detection = {
    notify = false,
  },
})

