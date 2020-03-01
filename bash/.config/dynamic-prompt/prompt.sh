source ~/.config/git-aware-prompt/prompt.sh
source ~/.config/dynamic-prompt/determine_color.sh

exit_status() {
    local exit_status=$?

    if [ $exit_status = '0' ]; then
        local exit_color="${txtgrn}"
    else
        local exit_color="${bakred}${txtblk}"
    fi

    echo "${exit_color}${exit_status}${txtrst}"
}

generate_prompt() {
    export PS1="${txtcyn}\u@\h${txtrst}:${bldpur}\w $(exit_status) ${bldcyn}$(find_git_branch)$(find_git_dirty) ${txtrst}$(date) \n$ "
}

PROMPT_COMMAND='generate_prompt'
