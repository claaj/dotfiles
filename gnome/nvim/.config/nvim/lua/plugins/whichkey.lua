return {
  {
    'folke/which-key.nvim',
    config = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300;
      vim.o.timeout = true
      vim.o.timeoutlen = 300

      require('which-key').setup {}

      local wk = require("which-key")
      wk.register({
        f = {
          name = "File",
          f = { "<cmd>Telescope find_files<cr>", "Find File" },
          r = { "<cmd>Telescope oldfiles<cr>", "Open Recent File", noremap = false },
          s = { "<cmd>update<cr>", "Save File" },
          -- d = { '<cmd>NvimTreeToggle<cr>', 'Open File Tree'},
          d = { '<cmd>Ex<cr>', 'Open File Tree' },
        },

        q = {
          name = 'Quit',
          q = { '<cmd>quit<cr>', 'Quit' },
          Q = { '<cmd>q!<cr>', 'Force Quit' },
        },

        g = {
          name = 'Git',
          g = { '<cmd>Neogit<cr>', 'Neogit' },
          f = { '<cmd> Telescope git_files<cr>', 'Find Git Files' },
        },

        b = {
          name = 'Buffers',
          b = { '<cmd>Telescope buffers<cr>', 'Existing Buffers' },
          k = { '<cmd>bw<cr>', 'Kill Actual Buffer' },
        },

        l = {
          name = 'LSP / Lazy',
          d = { '<cmd>Telescope diagnostics<cr>', 'LSP Diagnostics' },
          l = { '<cmd>Lazy<cr>', 'Lazy Menu'},
          u = { '<cmd>Lazy update<cr>', 'Lazy update'},
        },

        s = {
          name = 'Search',
          w = { '<cmd>Telescope grep_string<cr>', 'Search Current Word' },
          g = { '<cmd>Telescope live_grep<cr>', 'Search by Grep' },
          f = { function()
            require('telescope.builtin').current_buffer_fuzzy_find(require('telescope.themes').get_dropdown {
              winblend = 10,
              previewer = false,
            })
          end, 'Fuzzily Search in Current Buffer' },
        },

        h = {
          name = 'Help',
          s = { '<cmd>Telescope help_tags<cr>', 'Search Help' },
        },

      }, { prefix = "<leader>" })
    end,
  }
}
