-- File explorer
return {
  "nvim-neo-tree/neo-tree.nvim",
  branch = "v3.x",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-tree/nvim-web-devicons",
    "MunifTanjim/nui.nvim",
  },
  config = function()
    local function enable_cursorline()
      vim.wo.cursorline = true
      vim.wo.cursorlineopt = "line"
    end

    require("neo-tree").setup({
      close_if_last_window = true,
      log_level = vim.log.levels.ERROR,
      enable_opened_markers = true,
      window = {
        width = 30,
      },
      default_component_configs = {
        name = {
          highlight_opened_files = true,
        },
      },
      filesystem = {
        follow_current_file = {
          enabled = true,
        },
        use_libuv_file_watcher = true,
        filtered_items = {
          visible = true,  -- Show hidden files by default
          hide_dotfiles = false,
          hide_gitignored = false,
          hide_by_name = {
            ".git",
            ".DS_Store",
          },
        },
      },
      event_handlers = {
        {
          event = "neo_tree_buffer_enter",
          handler = enable_cursorline,
        },
        {
          event = "neo_tree_window_after_open",
          handler = function(args)
            if args.winid and vim.api.nvim_win_is_valid(args.winid) then
              vim.wo[args.winid].cursorline = true
              vim.wo[args.winid].cursorlineopt = "line"
            end
          end,
        },
      },
    })

    -- Keymaps
    vim.keymap.set("n", "<leader>e", "<cmd>Neotree toggle<cr>", { desc = "Toggle file explorer" })
    vim.keymap.set("n", "<leader>o", "<cmd>Neotree focus<cr>", { desc = "Focus file explorer" })

    -- Auto-open neo-tree when opening a directory (replaces netrw)
    vim.api.nvim_create_autocmd("VimEnter", {
      callback = function(data)
        local directory = vim.fn.isdirectory(data.file) == 1
        if directory then
          vim.cmd.cd(data.file)
          require("neo-tree.command").execute({ toggle = true, dir = data.file })
        end
      end,
    })
  end,
}
