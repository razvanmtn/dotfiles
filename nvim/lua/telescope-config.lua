local telescope = require('telescope')

telescope.setup{
  defaults = {
    file_ignore_patterns = { "yarn.lock", "package-lock.json", "node_modules", ".git", ".map" },
    mappings = {
      i = {
        ["<C-h>"] = telescope.extensions.send_to_harpoon.actions.send_selected_to_harpoon
      },
    }
  },
  extensions = {
    fzf = {
      fuzzy = true,
      override_generic_sorter = false,
      override_file_sorter = true,
      case_mode = "smart_case"
    },
    ["ui-select"] = {
      require("telescope.themes").get_dropdown {
        -- even more opts
      }
    },
		file_browser = {
      theme = "ivy",
      -- disables netrw and use telescope-file-browser in its place
      hijack_netrw = true,
      mappings = {
        ["i"] = {
          -- your custom insert mode mappings
        },
        ["n"] = {
          -- your custom normal mode mappings
        },
      },
    },
  },
  pickers = {
    buffers = {
      show_all_buffers = true,
      sort_lastused = true,
      -- theme = "dropdown",
      -- previewer = false,
      mappings = {
        i = {
          ["<D-d>"] = "delete_buffer"
        }
      }
    }
  }
}
 
telescope.load_extension("git_worktree")
telescope.load_extension("fzf")
telescope.load_extension("harpoon")
telescope.load_extension("send_to_harpoon")
telescope.load_extension("ui-select")
telescope.load_extension("refactoring")
