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

echo "linked dotfiles complete!"
