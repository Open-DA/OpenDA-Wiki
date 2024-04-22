#!/bin/bash
COMMIT_MESSAGE=${1:-$(date "+%Y-%m-%d %H:%M:%S")}

git add .
git commit -m "$COMMIT_MESSAGE"
git push origin main
# 检查命令是否成功执行
if [ "$?" -eq 0 ]; then
    echo "Changes pushed to GitHub successfully."
else
    echo "Failed to push changes to GitHub."
fi

mkdcos build
mkdocs gh-deploy