-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
  -- Packer can manage itself
  use 'wbthomason/packer.nvim'

  -- Telescope
  use {
  	'nvim-telescope/telescope.nvim', tag = '0.1.6',
  	requires = { {'nvim-lua/plenary.nvim'} }
  }

  -- Color Scheme
  --use "folke/tokyonight.nvim"
    use { "catppuccin/nvim", as = "catppuccin" }

    -- Treesitter
    use {
        'nvim-treesitter/nvim-treesitter',
        run = function()
            local ts_update = require('nvim-treesitter.install').update({ with_sync = true })
            ts_update()
        end,
    }

    -- TODO Comments
    use {
        'folke/todo-comments.nvim',
        requires = 'nvim-lua/plenary.nvim',
        config = function()
            require('todo-comments').setup{}
        end
    }


    -- WhichKey
    use {
    "https://github.com/folke/which-key.nvim",
    config = function()
        vim.o.timeout = true
        vim.o.timeoutlen = 300
        require("which-key").setup {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
        }
        vim.keymap.set(
            "n", "<leader>lw", "<cmd>WhichKey<CR>", { noremap = true, silent = true })
        vim.keymap.set(
            "v", "<leader>lw", "<cmd>WhichKey<CR>", { noremap = true, silent = true })
        end
    }


  use {
  'VonHeikemen/lsp-zero.nvim',
  branch = 'v3.x',
  requires = {
	--- Uncomment the two plugins below if you want to manage the language servers from neovim
	{'williamboman/mason.nvim'},
	{'williamboman/mason-lspconfig.nvim'},

	-- LSP Support
	{'neovim/nvim-lspconfig'},
        -- Autocompletion
	{'hrsh7th/nvim-cmp'},
	{'hrsh7th/cmp-nvim-lsp'},
	{'L3MON4D3/LuaSnip'},
    }
  }
end)


