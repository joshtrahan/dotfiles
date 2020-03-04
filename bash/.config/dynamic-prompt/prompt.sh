source ${HOME}/.config/dynamic-prompt/git-aware-prompt/prompt.sh
source ${HOME}/.config/dynamic-prompt/determine_color.sh

exit_status() {
    local exit_status=$?

    if [ $exit_status = '0' ]; then
        local exit_color="${txtgrn}"
    else
        local exit_color="${bakred}${txtblk}"
    fi

    echo "${txtrst}${exit_color}${exit_status}${txtrst} "
}

git_status() {
    local git_branch=$(find_git_branch)
    if [ "$git_branch" != '' ]; then
        echo "${txtrst}${bldcyn}${git_branch}$(find_git_dirty) "
    fi
}

prompt_date() {
    echo "${txtrst}$(date) "
}

prompt_base() {
    echo "${txtrst}${txtcyn}\u@\h${txtrst}:${bldpur}\w "
}

prompt_end() {
    echo "${txtrst}\n$ "
}

generate_prompt() {
    # has to be first so it's not giving status of one of these functions
    local cmd_exit_status=$(exit_status)

    export PS1="$(prompt_base)${cmd_exit_status}$(git_status)$(prompt_date)$(prompt_end)"
}

PROMPT_COMMAND=$"generate_prompt; history -a"
