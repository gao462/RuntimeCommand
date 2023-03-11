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
}

# CONDA
_CONDA_() {
    #
    conda activate GaSOps
}
#
_PS1_
_ALIAS_

# Module
_CUDA_
_SLURM_

#
_CONDA_
