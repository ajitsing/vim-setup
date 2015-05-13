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
mkdir ~/.vim
cp -R * ~/.vim/.

echo "copying vim configuration(.vimrc)..."
cp ~/.vim/vimrc ~/.vimrc

echo "setting up vundle..."
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

vim \
-u "~/.vimrc" \
"+set nomore" \
"+BundleInstall!" \
"+BundleClean" \
"+qall"

echo "congratulations, your vim setup is complete!"
