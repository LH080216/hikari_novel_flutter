# 📦 GitHub Actions 自动化构建指南

本项目已配置 GitHub Actions 工作流，支持自动编译多个平台的应用。以下是使用说明。

## 🚀 工作流说明

### 1. **Build Flutter APK** (`build.yml`)
**自动编译 Android APK**

#### 触发条件
- Push 到 `main` 或 `develop` 分支
- 创建 PR 到 `main` 或 `develop` 分支  
- 手动触发（在 Actions 页面点击 "Run workflow"）
- **推送 Git Tag 时自动创建 Release**

#### 功能
- ✅ 编译 Android APK（Release 版本）
- ✅ 上传 APK 到 Artifacts（保留 90 天）
- ✅ 推送 Tag 时自动发布到 GitHub Releases

#### 如何下载 APK
1. 打开 [Actions 页面](https://github.com/LH080216/hikari_novel_flutter/actions)
2. 找到最近的 "Build Flutter APK" 运行
3. 点击进入详情页
4. 滚动到底部，点击 **Artifacts** 部分
5. 下载 `app-release.apk`

#### 如何发布 Release
```bash
# 创建并推送 Tag
git tag v0.5.0
git push origin v0.5.0
```
工作流会自动创建 Release 并上传 APK 文件。

---

### 2. **Build Multi-Platform** (`build-multi-platform.yml`)
**手动编译 Windows 和 macOS 版本**

#### 触发条件
- **仅手动触发**（在 Actions 页面选择 "Build Multi-Platform" 并点击 "Run workflow"）

#### 支持平台
- 🪟 **Windows** - 编译 Release 版本可执行文件
- 🍎 **macOS** - 编译 Release 版本应用

#### 如何使用
1. 打开 [Actions 页面](https://github.com/LH080216/hikari_novel_flutter/actions)
2. 在左侧选择 **"Build Multi-Platform"** 工作流
3. 点击 **"Run workflow"** 按钮
4. 等待编译完成
5. 下载对应平台的 Artifacts

---

## 📋 快速参考

| 工作流 | 平台 | 触发方式 | 输出 |
|--------|------|--------|------|
| Build Flutter APK | Android | Push/PR/Manual/Tag | APK 文件 + Release |
| Build Multi-Platform | Windows, macOS | Manual Only | 平台特定文件 |

---

## 🛠️ 常见操作

### 查看工作流运行
```
https://github.com/LH080216/hikari_novel_flutter/actions
```

### 手动触发编译
1. 打开 Actions 页面
2. 选择工作流
3. 点击 "Run workflow" 按钮
4. 点击 "Run workflow" 确认

### 下载编译产物
1. 点击具体的工作流运行
2. 滚动到 "Artifacts" 部分
3. 下载所需文件

### 发布新版本
```bash
git tag v1.0.0
git push origin v1.0.0
```
自动创建 Release 并上传 APK。

---

## ⚙️ 工作流文件位置
- `.github/workflows/build.yml` - Android APK 编译和发布
- `.github/workflows/build-multi-platform.yml` - Windows/macOS 编译

---

## 📝 注意事项
- ⚠️ **编译产物仅供个人使用，不要分发到其他地方**
- 📦 Artifacts 默认保留 90 天
- 🔄 每次 Push 都会自动触发编译
- 💰 GitHub Actions 有免费额度（公开仓库无限制）

---

## 🆘 故障排查

### 工作流运行失败
1. 打开失败的工作流运行
2. 查看具体的 Job 日志
3. 检查错误信息
4. 根据错误修改代码或配置

### 构建超时
- 增加等待时间或优化构建配置
- 查看具体步骤耗时

---

**最后更新**：2026-06-02
