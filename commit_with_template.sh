#!/bin/bash

# 提交模板文件
TEMPLATE_FILE="git-commit-tempalte.txt"

# 读取模板内容
template=$(cat "$TEMPLATE_FILE")

# 从命令行获取提交信息
commit_message="$*"

# 合并模板内容和提交信息
combined_message="$template\n\n$commit_message"

# 执行 git commit
git commit -m "$combined_message"
