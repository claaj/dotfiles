# .bashrc
export EDITOR=nvim

# Si existe agregar a PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="/var/lib/flatpak/exports/bin/:$PATH"
export PATH="$HOME/.config/emacs/bin:$PATH"
export PATH="$HOME/.cargo/bin/:$PATH"

# Enviroment variables
if [ -z "$XDG_CONFIG_HOME" ] ; then
    export XDG_CONFIG_HOME="$HOME/.config"
fi
if [ -z "$XDG_DATA_HOME" ] ; then
    export XDG_DATA_HOME="$HOME/.local/share"
fi
if [ -z "$XDG_CACHE_HOME" ] ; then
    export XDG_CACHE_HOME="$HOME/.cache"
fi

# Use bash-completion, if available
[[ $PS1 && -f /usr/share/bash-completion/bash_completion ]] && \
    . /usr/share/bash-completion/bash_completion

#alias
alias vi='nvim'
alias docker='podman'
alias pandock='docker run --rm -v "$(pwd):/data" -u $(id -u):$(id -g) pandoc/extra'
alias ll="eza -la --icons --color=always"

#ignorar mayusculas al usar <tab>
bind "set completion-ignore-case on"

#mostrar opciones si el autocompletado ambiguo
bind 'set show-all-if-ambiguous on'

#Prompt
eval "$(starship init bash)"
