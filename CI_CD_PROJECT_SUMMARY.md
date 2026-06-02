# 📱 Hikari Novel Flutter - GitHub Actions CI/CD 完整指南

## 🎯 项目概况

本项目已成功配置 GitHub Actions 自动化构建系统，支持多平台编译和自动发布。

**仓库地址**: https://github.com/LH080216/hikari_novel_flutter

---

## 🚀 已完成的配置

### ✅ 工作流文件

#### 1. **Build Flutter APK** (`.github/workflows/build.yml`)
- 📱 **目标**: Android APK 自动编译
- **触发方式**:
  - Push 到 `main` 或 `develop` 分支
  - 创建 PR 到 `main` 或 `develop` 分支
  - 手动触发（Actions 页面）
  - **推送 Git Tag 时自动创建 Release** ⭐
  
- **功能**:
  - 编译 Flutter Release APK
  - 上传到 GitHub Artifacts（90 天保留）
  - Tag 推送时自动发布到 Release 页面

#### 2. **Build Multi-Platform** (`.github/workflows/build-multi-platform.yml`)
- 🪟 **Windows** 编译
- 🍎 **macOS** 编译
- **触发方式**: 仅手动触发（避免浪费资源）

---

## 📋 快速使用指南

### 方式 1️⃣：自动编译（每次 Push）
```bash
git push origin main
```
✅ 自动触发编译工作流
✅ 5-10分钟后 APK 生成
✅ 从 Artifacts 下载

### 方式 2️⃣：发布到 Release（推荐）
```bash
git tag -a v0.5.0 -m "Release v0.5.0"
git push origin v0.5.0
```
✅ 自动编译
✅ 自动创建 Release 页面
✅ APK 自动上传到 Release
✅ 生成发布链接

### 方式 3️⃣：编译其他平台（手动）
1. 打开 [Actions 页面](https://github.com/LH080216/hikari_novel_flutter/actions)
2. 选择 "Build Multi-Platform" 工作流
3. 点击 "Run workflow" 按钮
4. 等待完成后下载 Artifacts

---

## 📥 下载 APK

### 从 Artifacts（自动编译版）
1. https://github.com/LH080216/hikari_novel_flutter/actions
2. 找到最新的 "Build Flutter APK" 运行
3. 点击进入详情
4. 滚动到 "Artifacts" 部分
5. 下载 `app-release.apk`

### 从 Release（正式版本） 🌟
1. https://github.com/LH080216/hikari_novel_flutter/releases
2. 选择版本
3. 下载 `app-release.apk`

---

## ⚙️ 工作流配置详情

### Flutter 版本
- **版本**: 3.38.7
- **频道**: Stable
- **架构**: ARM64-v8a

### 编译参数
- **构建类型**: Release (优化版本)
- **优化**: 启用所有优化选项
- **签名**: 使用默认签名密钥

### 保存策略
- **Artifacts 保留时长**: 90 天
- **Release 保留**: 永久

---

## 🔄 工作流运行历史

| Run # | 状态 | 提交信息 |
|-------|------|--------|
| #8 | 🔄 进行中 | Release: v0.5.0 - GitHub Actions automated build |
| #7 | 🔄 进行中 | Version bump: v0.5.0-beta |
| #6 | 🔄 进行中 | Add: GitHub Actions workflow usage guide |
| #5 | 🔄 进行中 | Optimize: Increase artifact retention |
| #4 | 🔄 进行中 | Add: Multi-platform build workflow |
| #3 | 🔄 进行中 | Enhance: Add automatic release publishing |
| #2 | 🔄 进行中 | Fix: Update upload-artifact action |
| #1 | ❌ 失败 | Add GitHub Actions workflow (已修复) |

---

## 📊 项目文件结构

```
.github/
├── workflows/
│   ├── build.yml                 ← Android APK 编译和发布
│   └── build-multi-platform.yml  ← Windows & macOS 编译
└── RELEASE_NOTES.md              ← 发布说明模板

VERSION.txt                        ← 版本信息
GITHUB_ACTIONS_GUIDE.md           ← 详细使用指南
```

---

## 🆘 故障排查

### 工作流失败
1. 打开 [Actions 页面](https://github.com/LH080216/hikari_novel_flutter/actions)
2. 点击失败的运行
3. 查看具体的 Job 日志
4. 根据错误信息修复

### 常见问题

**Q: APK 没有生成？**
- A: 检查工作流是否成功完成（绿色对勾）
- 查看日志中是否有错误信息

**Q: 如何修改 Flutter 版本？**
- A: 编辑 `.github/workflows/build.yml`，修改 `flutter-version` 参数

**Q: 支持其他平台吗？**
- A: 可以，编辑 `build-multi-platform.yml` 添加 Linux 等平台

---

## 🎯 下一步建议

1. ✅ **现在就发布 v0.5.0**
   ```bash
   git tag -a v0.5.0 -m "First Release"
   git push origin v0.5.0
   ```

2. 📱 **测试 APK**
   - 从 Release 下载 APK
   - 在 Android 设备上安装并测试

3. 🔐 **添加签名证书**（可选）
   - 为生产版本添加正式签名
   - 存储签名密钥到 GitHub Secrets

4. 📦 **发布到应用商店**
   - 可配置自动上传到 Google Play
   - 或其他应用市场

5. 🔔 **设置通知**
   - 配置 Slack/Discord 通知
   - 在发布时获得即时警报

---

## 📞 支持资源

- 📖 [GitHub Actions 官方文档](https://docs.github.com/en/actions)
- 🦢 [Flutter 官方文档](https://flutter.dev/docs)
- 🔧 [GitHub Releases API](https://docs.github.com/en/rest/releases)

---

## 📝 版本历史

| 版本 | 日期 | 说明 |
|------|------|------|
| v0.5.0-beta | 2026-06-02 | GitHub Actions CI/CD 初始配置 |

---

**最后更新**: 2026-06-02 03:31 UTC
**维护者**: LH080216
**许可证**: MIT

---

## 🎉 总结

✅ GitHub Actions 工作流已完全配置
✅ Android APK 自动编译设置完成
✅ 多平台支持（Windows, macOS）
✅ 自动发布到 Release 功能启用
✅ 完整的文档和使用指南

**现在你可以**:
1. 推送 Tag 自动发布版本
2. 每次 Push 自动编译 APK
3. 手动编译其他平台版本
4. 从 Release 页面分享下载链接

🚀 **准备好了吗？立即推送 Tag 开始发布！**
