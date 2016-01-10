#!/bin/bash



vsnip()
{
	if [ $# -eq 0 ] ;then
		vim /home/brady/.vim/bundle/vim-snippets/snippets/_.snippets
	elif [ $# -eq 1 ] ;then
		vim /home/brady/.vim/bundle/vim-snippets/snippets/${1}.snippets
	fi

}



