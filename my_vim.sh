cd 
git clone https://github.com/joshdick/onedark.vim
cd .vim
if [[ $(ls -d */ | grep "colors") == "" ]];then 
  mkdir colors
fi
cd colors
for x in ~/onedark.vim/colors/*;do
  cp -r $x .
done
cd ..
if [[ $(ls -d */ | grep "autoload") == " " ]];then
  mkdir autoload
fi
cd autoload
for x in ~/onedark.vim/autoload/*;do
  cp -r $x .
done
cat setup.txt >> ~/.vimrc
echo "syntax on" >> ~/.vimrc
echo "colorscheme onedark" >> ~/.vimrc
vim
