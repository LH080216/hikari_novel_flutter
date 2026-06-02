#!/bin/bash
# GitHub Release Creator Script
# 用于创建 v0.5.0 Release

# 创建 Tag
git tag -a v0.5.0 -m "Release v0.5.0 - First GitHub Actions Automated Build"

# 推送 Tag 到 GitHub
git push origin v0.5.0

echo "✅ Release v0.5.0 created successfully!"
echo "📍 Check: https://github.com/LH080216/hikari_novel_flutter/releases"
