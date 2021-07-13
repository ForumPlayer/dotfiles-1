# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=2000
unsetopt beep
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '$HOME/.zshrc'

autoload -Uz compinit
autoload -Uz promptinit
promptinit
compinit

PROMPT='%F{white}  %F{blue}%n%f%F{white}  %F{blue}%B%~%b%f  '
#RPROMPT='[%F{blue}%m%f]'
# End of lines added by compinstall


if [ -x /usr/bin/dircolors ]; then
    test -r ~/.dircolors && eval "$(dircolors -b ~/.dircolors)" || eval "$(dircolors -b)"
    alias ls='ls --color=auto'
    #alias dir='dir --color=auto'
    #alias vdir='vdir --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

# colored GCC warnings and errors
#export GCC_COLORS='error=01;31:warning=01;35:note=01;36:caret=01;32:locus=01:quote=01'

# some more ls aliases
alias ll='ls -alF --group-directories-first'
alias la='ls -A --group-directories-first'
alias l='ls -CF --group-directories-first'

# Extra Aliases
alias alias-edit='sudo vim ~/.zshrc'
alias alias-src='source ~/.zshrc'
alias alias-bak='cp ~/.zshrc ~/.zshrc.bak'
alias halt='halt -p'
alias b5='sudo brightnessctl s 5%'
alias b10='sudo brightnessctl s 10%'
alias b25='sudo brightnessctl s 25%'
alias b50='sudo brightnessctl s 50%'
alias b75='sudo brightnessctl s 75%'
alias b100='sudo brightnessctl s 100%'
alias server-htop='ssh -t USERNAME@$ADDRESS htop'
alias server-neofetch='ssh -t USERNAME@ADDRESS neofetch'
alias music='cd ~/Music'
alias dl='youtube-dl'
alias play-all='nohup vlc * & exit'

# i3 aliases
alias i3config='sudo vim ~/.config/i3/config'
alias i3config-mbk='sudo cp ~/.config/i3/config ~/.config/i3/config.bak'
alias polybarcfg='sudo vim ~/.config/polybar/config'
alias ntwkspd='wget -O /dev/null http://speedtest.wdc01.softlayer.com/downloads/test10.zip'


# Add an "alert" alias for long running commands.  Use like so:
#   sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

alias setclip="xclip -selection c"
alias getclip="xclip -o -selection clipboard"

alias update="sudo pacman -Syyu && yay -Syyu --noconfirm"

# Ranger Alias
alias rh="ranger ~"
alias rs="ranger ~/Server"
alias rr="ranger /"
alias rc="ranger ~/.config"
alias rdn="ranger ~/Downloads"
alias rdc="ranger ~/Documents"
alias rpc="ranger ~/Pictures"
alias rvd="ranger ~/Videos"
alias rms="ranger ~/Music"
alias rsc="ranger ~/scripts"
alias rft="ranger ~/.fonts"
alias rpg="ranger ~/Programming"

# Vim Alias
alias v="vim"
alias sv="sudo vim"

# Kill Alias
alias xk="xkill"
alias ka="killall"

# Pacman alias
alias pacman="sudo pacman"
alias listpkg="sudo pacman -Qq | fzf --preview 'pacman -Qil {}' --layout=reverse --bind 'enter:execute(pacman -Qil {} | less)'"
