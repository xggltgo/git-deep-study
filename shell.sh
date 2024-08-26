#!/bin/bash

# 获取最新提交的描述信息
commit_message=$(git log -1 --pretty=%B)

# 提取各个变量的值
type_name=$(echo "$commit_message" | grep '__TYPE_NAME__' | awk -F'=' '{print $2}' | xargs)
app_name=$(echo "$commit_message" | grep '__APP_NAME__' | awk -F'=' '{print $2}' | xargs)
project_name=$(echo "$commit_message" | grep '__PROJECT_NAME__' | awk -F'=' '{print $2}' | xargs)

# 输出提取的值
echo "__TYPE_NAME__=$type_name"
echo "__APP_NAME__=$app_name"
echo "__PROJECT_NAME__=$project_name"
