# Use this script to push your code to git!
# Provide an optional argument for a different branch than master
# Provide your commit message in double or single quotes
# e.g.: ./push.sh "My commit message"
# e.g2.: ./push.sh develop "My commit message"
# this assumes remote is always 'origin'

branch_name="master"
commit_message=""

# checking number of arguments and retrieving branch-name and commit-message
# if provided
if [[ $# == 1 ]]; then
    commit_message="$1"
elif [[ $# == 2 ]]; then
    branch_name="$1"
    commit_message="$2"
else
    echo "Invalid Number of arguments. Usage: ./push.sh [branch-name] commit-message"
fi

# navigating to parent directory - comment this line if git folder is current directory
if ! [[ -d .git ]]; then
    cd ..
fi

# adding all files to git
git add -A
# commit message
git commit -m "$commit_message"
# pushing to branch
git push origin $branch_name
