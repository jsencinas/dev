return {
    'catppuccin/nvim',
    config = function()
	require("catppuccin").setup({
	    transparent_background = false
	})
	vim.cmd.colorscheme "catppuccin-mocha"
    end
}
