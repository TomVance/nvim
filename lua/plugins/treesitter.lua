 return {
   "nvim-treesitter/nvim-treesitter",
   build = ":TSUpdate",
   config = function () 
    local treeSitterConfig = require("nvim-treesitter.configs")

    treeSitterConfig.setup({
      ensure_installed = {"lua", "ruby", "javascript", "typescript"},
      highlight = { enable = true },
      indent = { enable = true }
    })
   end
 }
