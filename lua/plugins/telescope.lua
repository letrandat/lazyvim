return {
  "nvim-telescope/telescope.nvim",
  keys = {
    -- add a keymap to browse plugin files
    -- stylua: ignore
    {
      "<leader>fp",
      function() require("telescope.builtin").find_files({ cwd = require("lazy.core.config").options.root }) end,
      desc = "Find Plugin File",
    },
    {
      "<C-f>",
      function()
        require("telescope.builtin").live_grep({ default_text = vim.fn.expand("<cword>") })
      end,
      desc = "trandat: grep (cwd)",
    },
  },
  opts = {
    defaults = {
      -- remove as much from the path as possible to only show
      -- the difference between the displayed paths.
      path_display = { "smart" },
    },
  },
}
