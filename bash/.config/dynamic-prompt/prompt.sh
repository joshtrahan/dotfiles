source ~/.config/git-aware-prompt/prompt.sh

if [ $color_prompt = "yes" ]; then
    source ~/.config/git-aware-prompt/colors.sh
fi

generate_prompt() {
    export PS1="${txtcyn}\u@\h${txtrst}:${bldpur}$(pwd) ${bldcyn}$(find_git_branch)$(find_git_dirty) ${txtrst}$(date) \n$ "
}

PROMPT_COMMAND='generate_prompt'
