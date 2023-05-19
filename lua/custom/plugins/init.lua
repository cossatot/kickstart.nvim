-- You can add your own plugins here or in other files in this directory!
--  I promise not to create any merge conflicts in this directory :)
--
-- See the kickstart.nvim README for more information
return {
    "jeffkreeftmeijer/vim-numbertoggle",
    "ethanmuller/scratch.vim",
    "luochen1990/rainbow",
    "ervandew/supertab",
    "lervag/vimtex",
    
    {"vim-pandoc/vim-pandoc",
    config = function ()
	    vim.cmd([[
	    " let g:pandoc#syntax#conceal#use = 0
	    " let g:pandoc#formatting#mode = 'ha'
	    let g:pandoc#modules#disabled = ['folding']
	    ]])
	end
	},
    "vim-pandoc/vim-pandoc-syntax",

    {"preservim/vim-pencil",
    config = function()
        vim.cmd([[
let g:pencil#textwidth = 79
let g:pencil#conceallevel = 0

augroup pencil
autocmd!
autocmd FileType markdown call pencil#init({'wrap': 'hard'})
autocmd FileType latex call pencil#init({'wrap': 'hard'})
augroup END
]])
end
}

}
