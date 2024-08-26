#!/bin/bash

# 提交模板文件
TEMPLATE_FILE="git-commit-tempalte.txt"

# 读取模板内容
if [ -f "$TEMPLATE_FILE" ]; then
  template=$(cat "$TEMPLATE_FILE")
else
  echo "Template file not found: $TEMPLATE_FILE"
  exit 1
fi

# 从命令行获取提交信息
commit_message="$*"

# 合并模板内容和提交信息
combined_message=$(printf "%s\n" "$template" "$commit_message")

# 输出合并后的消息用于调试
echo "Combined commit message:"
echo "$combined_message"

# 执行 git commit
git commit -m "$combined_message"
