# Load .bashrc, for non-login related bash initializations.
source ~/.bashrc
source ~/.git-prompt.sh

export GIT_PS1_SHOWCOLORHINTS=1;

function color_my_prompt {
    if [[ $(uname) == "Darwin" ]]; then
      local __user_and_host="🍏 "
    else
      local __user_and_host="🐧 "
    fi

    local __cur_location="\[\033[01;34m\]\w"
    local __git_branch_color="\[\033[31m\]"
    #local __git_branch="\`ruby -e \"print (%x{git branch 2> /dev/null}.grep(/^\*/).first || '').gsub(/^\* (.+)$/, '(\1) ')\"\`"
    local __git_branch='`git branch 2> /dev/null | grep -e ^* | sed -E  s/^\\\\\*\ \(.+\)$/\(\\\\\1\)\ /`'
    local __prompt_tail="\[\033[35m\]🔮 "
    local __last_color="\[\033[00m\]"
    export PS1="$__user_and_host $__cur_location $__git_branch_color$__git_branch$__prompt_tail$__last_color "
}
color_my_prompt
