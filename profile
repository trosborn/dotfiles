PROMPT_COMMAND='echo -ne "\033]0;${PWD}\007"'

smiley () {
  if [[ $? != "0" ]];
    then echo '❌ ';
  fi;
}
export PS1="\$(smiley)\e[34;1m\w\e[0m\n❯ "
Bundle "tpope/vim-rails"
Bundle "vim-ruby/vim-ruby"
Bundle "tpope/vim-bundler"
