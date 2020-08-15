set -u

echo "link home directory dotfiles"

for f in .??*
do
  [[ "$f" == ".git" ]] && continue
  [[ "$f" == ".DS_Store" ]] && continue
  [[ "$f" == ".gitignore" ]] && continue

  ln -sfnv ~/Dotfiles/$f ~/$f 
  echo $f
done

ln -sfnv ~/Dotfiles/zpreztorc ~/.zpreztorc 
ln -sfnv ~/Dotfiles/zprofile ~/.zprofile
ln -sfnv ~/Dotfiles/zshrc ~/.zshrc
ln -sfnv ~/Dotfiles/gitignore_global ~/.gitignore_global
echo "linked dotfiles complete!"
