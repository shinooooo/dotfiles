set -u

echo "link home directory dotfiles"

dotfiles_dir=$HOME/dotfiles
config_dir=$HOME/.config

ln -sfnv $dotfiles_dir/.config/alacritty  $config_dir/alacritty
ln -sfnv $dotfiles_dir/.config/fish $config_dir/fish
ln -sfnv $dotfiles_dir/.config/nvim $config_dir/nvim

ln -sfnv $dotfiles_dir/zpreztorc ~/.zpreztorc 
ln -sfnv $dotfiles_dir/zprofile ~/.zprofile
ln -sfnv $dotfiles_dir/zshrc ~/.zshrc
ln -sfnv $dotfiles_dir/gitignore_global ~/.gitignore_global
echo "linked dotfiles complete!"
