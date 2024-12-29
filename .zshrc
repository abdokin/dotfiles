export PATH=$HOME/bin:$HOME/.local/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="lambda"
plugins=(git rails ruby)

source $ZSH/oh-my-zsh.sh

# User configuration

. "$HOME/.asdf/asdf.sh"
. "$HOME/.asdf/completions/asdf.bash"

# bun completions
[ -s "/home/abdo/.bun/_bun" ] && source "/home/abdo/.bun/_bun"

export EDITOR="nvim"
# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$PATH"
export PATH=$PATH:/usr/local/go/bin
export GOPATH=$HOME/go
export PATH=$PATH:$GOPATH/bin
export HELIX_RUNTIME=/usr/local/share/helix/runtime
export COLORTERM=truecolor
export PATH="$PATH:/opt/nvim-linux64/bin"

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

source /usr/share/zsh-autosuggestions

autoload -Uz vcs_info
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' (%F{cyan}%b%f)'

PS1='%F{magenta}λ%f${vcs_info_msg_0_} '


alias ls='exa -lah'
alias ll='exa -lah'
alias la='exa -a'
alias lt='exa --tree'
alias lg='exa --grid'
