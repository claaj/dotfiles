# .bashrc
export EDITOR=nvim

# Si existe agregar a PATH
export PATH="$HOME/.local/bin:$PATH"
export PATH="/var/lib/flatpak/exports/bin/:$PATH"
export PATH="$HOME/.cargo/bin/:$PATH"
export PATH="$HOME/flutter/bin/:$PATH"

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

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
export SDKMAN_DIR="$HOME/.sdkman"
[[ -s "$HOME/.sdkman/bin/sdkman-init.sh" ]] && source "$HOME/.sdkman/bin/sdkman-init.sh"

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/usr/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/usr/etc/profile.d/conda.sh" ]; then
        . "/usr/etc/profile.d/conda.sh"
    else
        export PATH="/usr/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<


# bun
export BUN_INSTALL="$HOME/.local/share/reflex/bun"
export PATH=$BUN_INSTALL/bin:$PATH
