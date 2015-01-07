vim_config=".vimrc"
if [ -e ~/${vim_config} ]; then
	echo "moving your old vim settings to ~/.vimrc_old"
	mv ~/.vimrc ~/.vimrc_old
fi

vim_folder=".vim"
if [ -d ~/"${vim_folder}" ]; then
	echo "moving old vim setup to ~/.vim_old"
	mv ~/.vim ~/.vim_old
fi

echo "creating ~/.vim folder..."
mv ../vim-setup ~/.vim

echo "copying vim configuration(.vimrc)..."
cp ~/.vim/vimrc ~/.vimrc

echo "setting up vundle..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

echo "congratulations, your vim setup is complete!"
echo "now open ~/.vimrc and run :BundleInstall to install all the plugins...."
