if [ -z $passed_in_arg ];
then
    git_commit_comment="Commited with script save_it.bash, no commit arg passed"
else
    git_commit_comment=$passed_in_arg
fi


git add --all :/
git commit -m "$git_commit_comment"
git push --all
