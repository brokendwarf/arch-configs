# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory autocd extendedglob
setopt autopushd pushdminus pushdsilent pushdtohome
setopt autocd
setopt cdablevars
setopt ignoreeof
setopt interactivecomments
setopt nobanghist
setopt noclobber
setopt HIST_REDUCE_BLANKS
setopt HIST_IGNORE_SPACE
setopt SH_WORD_SPLIT
setopt nohup
bindkey -e
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/brokendwarf/.zshrc'
typeset -g -A key
bindkey '^?' backward-delete-char
bindkey '^[[7~' beginning-of-line
bindkey '^[[5~' up-line-or-history
bindkey '^[[3~' delete-char
bindkey '^[[8~' end-of-line
bindkey '^[[6~' down-line-or-history
bindkey '^[[A' up-line-or-search
bindkey '^[[D' backward-char
bindkey '^[[B' down-line-or-search
bindkey '^[[C' forward-char 
# completion in the middle of a line
bindkey '^i' expand-or-complete-prefix

autoload -U compinit promptinit
compinit
promptinit
prompt adam2
zstyle ':completion:*' menu select 

# allow approximate
 zstyle ':completion:*' completer _complete _match _approximate
 zstyle ':completion:*:match:*' original only
 zstyle ':completion:*:approximate:*' max-errors 1 numeric
#
# # tab completion for PID :D
 zstyle ':completion:*:*:kill:*' menu yes select
 zstyle ':completion:*:kill:*' force-list always
#
# # cd not select parent dir

 zstyle ':completion:*:cd:*' ignore-parents parent pwd

 alias sudo='sudo -p "sudo password:"'
