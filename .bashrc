# Reset prompt shell header.
_PS1_() {
    #
    local cmdhd

    #
    shopt -s promptvars
    cmdhd=
    cmdhd="${cmdhd}#\033[36m\#\033[0m"
    cmdhd="${cmdhd} \033[92m\u\033[0m"
    cmdhd="${cmdhd}@\033[94m\h\033[0m"
    cmdhd="${cmdhd}[\033[95m${STY#*.}\033[0m]"
    cmdhd="${cmdhd}:\033[33m\w\033[0m"
    cmdhd="${cmdhd}|\033[93m\W\033[0m"
    export PS1="\n\033[0m${cmdhd}\033[0m\n$ "
}

# Global path.
_PATH_() {
    #
    export PATH="${HOME}/.local/bin:${PATH}"
}

# Alias new commands.
_ALIAS_() {
    #
    alias lsc="ls --color"
}

# CUDA
_CUDA_() {
    # Expect 11.6, but only 11.7 is available.
    module load cuda/11.7
}

# Slurm
_SLURM_() {
    #
    module load slurm
    export SQUEUE_FORMAT="%.10i %.9P %.8u %.28j %.2t %.10M"
}

# CONDA
_CONDA_() {
    #
    conda activate GaSOps
}

#
_PS1_
_PATH_
_ALIAS_

# Module
_CUDA_
_SLURM_

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/homes/gao462/Studio/Library/MiniConda3/bin/conda' 'shell.bash' 'hook' 2>/dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/homes/gao462/Studio/Library/MiniConda3/etc/profile.d/conda.sh" ]; then
        . "/homes/gao462/Studio/Library/MiniConda3/etc/profile.d/conda.sh"
    else
        export PATH="/homes/gao462/Studio/Library/MiniConda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

#
_CONDA_
