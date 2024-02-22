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
      "<C-p>",
      function()
        require("telescope.builtin").find_files({ cwd = false })
      end,
      desc = "trandat: Find Files (cwd)",
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
