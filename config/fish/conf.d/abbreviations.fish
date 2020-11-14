if status --is-interactive
  # git
  abbr -a -g g 'git'
  abbr -a -g ga 'git add'
  abbr -a -g gc 'git commit -sm'
  abbr -a -g gcf 'git clean -df'
  abbr -a -g gic 'git commit --allow-empty -sm "Initial commit"'
  abbr -a -g gpmb 'git branch --merged | grep -v master | xargs -P (nproc) git branch -D'
  abbr -a -g gr 'git reset --hard'
  abbr -a -g grh 'git reset HEAD^1'
  abbr -a -g gs 'git switch'
  abbr -a -g gsc 'git switch -c'
  abbr -a -g gss 'git status -s'
end
