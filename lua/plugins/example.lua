return {
  {
    "johmsalas/text-case.nvim",
    lazy = false,
    config = true,
    cmd = {
      "Subs",
      "TextCaseStartReplacingCommand",
    },
  },
  { "sindrets/diffview.nvim" },
  { "nvim-tree/nvim-web-devicons", opts = {} },
  {
    "chrisgrieser/nvim-rip-substitute",
    keys = {
      {
        "g/",
        function()
          require("rip-substitute").sub()
        end,
        mode = { "n", "x" },
        desc = "Rip Substitute",
      },
    },
  },
  {
    "akinsho/git-conflict.nvim",
    lazy = false,
    opts = {
      default_mappings = {
        ours = "<leader>ho",
        theirs = "<leader>ht",
        none = "<leader>h0",
        both = "<leader>hb",
        next = "]x",
        prev = "[x",
      },
    },
    keys = {
      {
        "<leader>gx",
        "<cmd>GitConflictListQf<cr>",
        desc = "List Conflicts",
      },
      {
        "<leader>gr",
        "<cmd>GitConflictRefresh<cr>",
        desc = "Refresh Conflicts",
      },
    },
  },
  {
    "seblj/roslyn.nvim",
    ft = "cs",
    opts = {
      config = {
        settings = {
          ["csharp|inlay_hints"] = {
            csharp_enable_inlay_hints_for_implicit_object_creation = true,
            csharp_enable_inlay_hints_for_implicit_variable_types = true,
            csharp_enable_inlay_hints_for_lambda_parameter_types = true,
            csharp_enable_inlay_hints_for_types = true,
            dotnet_enable_inlay_hints_for_indexer_parameters = true,
            dotnet_enable_inlay_hints_for_literal_parameters = true,
            dotnet_enable_inlay_hints_for_object_creation_parameters = true,
            dotnet_enable_inlay_hints_for_other_parameters = true,
            dotnet_enable_inlay_hints_for_parameters = true,
            dotnet_suppress_inlay_hints_for_parameters_that_differ_only_by_suffix = true,
            dotnet_suppress_inlay_hints_for_parameters_that_match_argument_name = true,
            dotnet_suppress_inlay_hints_for_parameters_that_match_method_intent = true,
          },
          ["csharp|code_lens"] = {
            dotnet_enable_references_code_lens = true,
          },
        },
      },
    },
  },
  {
    "nvim-neotest/neotest",
    opts = { adapters = { "neotest-dotnet" } },
  },
  { "echasnovski/mini.ai", version = "*" },
  {
    "echasnovski/mini.files",
    keys = {
      {
        "<leader>be",
        function()
          require("mini.files").open(vim.api.nvim_buf_get_name(0), true)
        end,
        desc = "Open mini.files (directory of current file)",
      },
      {
        "<leader>bE",
        function()
          require("mini.files").open(vim.uv.cwd(), true)
        end,
        desc = "Open mini.files (cwd)",
      },
      {
        "<leader>fm",
        function()
          require("mini.files").open(LazyVim.root(), true)
        end,
        desc = "Open mini.files (root)",
      },
    },
  },
  {
    "chrisgrieser/nvim-spider",
    opts = {},
    keys = {
      {
        "w",
        "<cmd>lua require('spider').motion('w')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to start of next of word",
      },
      {
        "e",
        "<cmd>lua require('spider').motion('e')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to end of word",
      },
      {
        "b",
        "<cmd>lua require('spider').motion('b')<CR>",
        mode = { "n", "o", "x" },
        desc = "Move to start of previous word",
      },
    },
  },
  { "nvim-neo-tree/neo-tree.nvim", enabled = false },
  { "mini.ai" },
  {
    "mrjones2014/smart-splits.nvim",
    build = "./kitty/install-kittens.bash",
    keys = {
      {
        "<A-h>",
        function()
          require("smart-splits").move_cursor_left()
        end,
        desc = "Move to left window",
      },
      {
        "<A-l>",
        function()
          require("smart-splits").move_cursor_right()
        end,
        desc = "Move to right window",
      },
      {
        "<A-j>",
        function()
          require("smart-splits").move_cursor_down()
        end,
        desc = "Move to below window",
      },
      {
        "<A-k>",
        function()
          require("smart-splits").move_cursor_up()
        end,
        desc = "Move to above window",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        angularls = {
          settings = {
            angularls = {
              plugins = {
                rope_autoimport = {
                  enabled = true,
                },
              },
            },
          },
        },
      },
    },
  },
  -- lazy.nvim
  {
    "GustavEikaas/easy-dotnet.nvim",
    dependencies = { "nvim-lua/plenary.nvim", "nvim-telescope/telescope.nvim" },
    config = function()
      require("easy-dotnet").setup()
    end,
  },
}
