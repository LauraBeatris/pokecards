git diff-tree -r --name-only --no-commit-id master | grep '^doc/' &> /doc
if [ $? == 0 ]; then
  git push origin `git subtree split --prefix doc master 2> doc`:gh-pages --force
fi
