return {
    'catppuccin/nvim',
    config = function()
	require("catppuccin").setup({
	    transparent_background = true
	})
	vim.cmd.colorscheme "catppuccin-mocha"
    end
}
