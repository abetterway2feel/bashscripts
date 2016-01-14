# Git branch in prompt.

parse_git_branch() {

    git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'

}
export PS1="\[\033[36m\]\u \[\033[00m\]: \W\[\033[32m\]\$(parse_git_branch)\[\033[00m\] $ "

function load_file {
  if [ -a ${1} ]
  then
    . ${1}
  fi

}
load_file "/Users/philquinn/.aliases"
load_file "/Users/philquinn/.env"

