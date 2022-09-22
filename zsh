# Enable Powerlevel10k instant prompt. Should stay close to the top of ~/.zshrc.
# Initialization code that may require console input (password prompts, [y/n]
# confirmations, etc.) must go above this block; everything else may go below.
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

export ZSH="/home/chikai/.oh-my-zsh"
export PATH=$HOME/.config/rofi/bin:$PATH
#ZSH_THEME="powerlevel10k/powerlevel10k"
ZSH_THEME="robbyrussell"
plugins=(
		zsh-autosuggestions
		zsh-syntax-highlighting
		archlinux					   
                vi-mode
                zsh-z
	)

# vi-mode set
VI_MODE_RESET_PROMPT_ON_MODE_CHANGE=true
VI_MODE_SET_CURSOR=true

source $ZSH/oh-my-zsh.sh
function proxy_on() {
    export http_proxy=http://127.0.0.1:7890
    export https_proxy=http://127.0.0.1:7890
    echo -e "终端代理已开启。"
}

function proxy_off(){
    unset http_proxy https_proxy
    echo -e "终端代理已关闭。"
}

alias vim=nvim
#alias vim=lvim
alias cl=clear
export CHROME_EXECUTABLE=/bin/google-chrome-stable
# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

