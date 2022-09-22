# Mikko's config
pfetch

# enable colors
autoload -U colors && colors
#PS1="%B%{$fg[red]%}[%{$fg[yellow]%}%n%{$fg[green]%}@%{$fg[blue]%}%M %{$fg[magenta]%}%~%{$fg[red]%}]%{$reset_color%}$%b "
PS1="%B%{$fg[blue]%}%n %{$fg[yellow]%}%~ %{$fg[green]%}❯%{$reset_color%}%b "
#PS1="%B%{$fg[blue]%}%n %{$fg[yellow]%}%~ %{$fg[green]%} %{$reset_color%}%b "
setopt autocd		# Automatically cd into typed directory.

# history in cache directory
HISTSIZE=100000
SAVEHIST=100000
HISTFILE=${ZDOTDIR}/.histfile

# ls colors
LS_COLORS="di=1;34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43"
export LS_COLORS

# auto/tab complete:
autoload -U compinit
zstyle ':completion:*' menu select 
zstyle ':completion:*' list-colors ${(s.:.)LS_COLORS}
zstyle ':completion:*' matcher-list '' 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'

zmodload zsh/complist
compinit
_comp_options+=(globdots) # Include hidden files

echo -ne '\e[5 q' # Use beam shape cursor on startup.
preexec() { echo -ne '\e[5 q' ;} # Use beam shape cursor for each new prompt.

# key binds
bindkey '^[[H' beginning-of-line
bindkey '^[[F' end-of-line
bindkey '^[[3~' delete-char


# aliases
alias sudo='sudo '
alias please='sudo $(fc -ln -1)'
#alias ls='ls --color'
alias ls='lsd'
#alias la='ls -alG'
alias la='ls -la'
#alias ll='ls -aG'
alias ll='ls -l'
alias lt='ls --tree'
alias vim='nvim'
alias vi='nvim'
alias svim='sudo nvim'
alias svi='sudo nvim'
alias -- -='cd -'
alias ..='cd ..'
alias yay='paru'
alias yeet='paru -Rsc'
alias minecraft-launcher="minecraft-launcher --workDir $HOME/Games/Minecraft"
alias mbsync="mbsync -c "$XDG_CONFIG_HOME"/isync/mbsyncrc"

# load zsh-syntax-highlighting
#source /usr/share/zsh/plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh

# load fast-syntax-highlighting
source /usr/share/zsh/plugins/fast-syntax-highlighting/fast-syntax-highlighting.plugin.zsh

# load zsh-autosuggestions                 
source /usr/share/zsh/plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# substring search
source /usr/share/zsh/plugins/zsh-history-substring-search/zsh-history-substring-search.zsh

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-up
