sudo apt install -y zsh curl git

if [ ! -d "$HOME/.oh-my-zsh" ]
then
    sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
fi

if [ ! -d "$HOME/.oh-my-zsh/plugins-git/autojump" ]
then
    git clone git://github.com/wting/autojump.git $HOME/.oh-my-zsh/plugins-git/autojump
fi
