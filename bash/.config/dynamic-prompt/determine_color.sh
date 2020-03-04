# This logic was shamelessly copied from the default
# Ubuntu .bashrc file.

#force_color_prompt=yes

case "$TERM" in
    xterm-color|*-256color) color_prompt=yes;;
esac

if [ -n "$force_color_prompt" ]; then
    if [ -x /usr/bin/tput ] && tput setaf 1 >&/dev/null; then
        color_prompt=yes
    else
        color_prompt=
    fi
fi

if [ "$color_prompt" = yes ]; then
    source ~/.config/dynamic-prompt/git-aware-prompt/colors.sh
fi

unset color_prompt force_color_prompt
