return {
	--this file for plugins that don't need much config
	--add telescope
	{
	    'nvim-telescope/telescope.nvim', tag = '0.1.8',
	      dependencies = { 
		'nvim-lua/plenary.nvim',
	    }
	},
	--add harpoon
	{
	    "ThePrimeagen/harpoon",
	    branch = "harpoon2",
	    dependencies = { "nvim-lua/plenary.nvim" },
	},
	--add undotree
	{
	  "jiaoshijie/undotree",
	  dependencies = "nvim-lua/plenary.nvim",
	  config = true,
	},
    --add tmux navigator
    {
        "christoomey/vim-tmux-navigator",
    },
    --add leetcode.nvim
    {
        "kawre/leetcode.nvim",
        build = ":TSUpdate html",
        dependencies = {
            "nvim-telescope/telescope.nvim",
            "nvim-lua/plenary.nvim", -- required by telescope
            "MunifTanjim/nui.nvim",

            -- optional
            "nvim-treesitter/nvim-treesitter",
            "rcarriga/nvim-notify",
            "nvim-tree/nvim-web-devicons",
        },
        opts = {
            -- configuration goes here
        },
    },
    --add auto-dark-mode.nvim
    {
      "f-person/auto-dark-mode.nvim",
      opts = {
        -- your configuration comes here
        -- or leave it empty to use the default settings
        -- refer to the configuration section below
      }
    }
}
