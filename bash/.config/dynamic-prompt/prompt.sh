source ~/.config/git-aware-prompt/prompt.sh
source ~/.config/git-aware-prompt/colors.sh

generate_prompt() {
    export PS1="\u@\h ${txtpur}${git_branch} ${git_dirty}${txtrst} \n$ "
}

PROMPT_TEXT=${PS1}
PROMPT_COMMAND='generate_prompt'
