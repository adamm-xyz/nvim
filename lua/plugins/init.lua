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
	}
}
