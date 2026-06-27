---
name: chrome-memory-optimizer
description: "Chrome 浏览器内存深度优化工具。一键关闭 Chrome、清理缓存、写入内存节省器配置、以优化参数重启。适用于: (1) Chrome 占内存过高 (>2GB) 时一键优化; (2) 系统内存不足需释放资源; (3) 多标签用户希望减少内存占用; (4) 科技博主录制优化教程前重置 Chrome 状态。"
---

# Chrome 内存深度优化

## 概述

本 Skill 提供一套完整的 Chrome 内存优化方案：通过修改 Chrome 原生配置文件启用 Memory Saver（内存节省器）、省电模式、标签丢弃策略，配合启动参数限制渲染进程数和内存上限，大幅降低 Chrome 内存占用。

典型效果：优化前 4~5GB → 优化后 1~2GB（取决于标签数量）

## 使用方法

### 一键快速优化

```powershell
.\scripts\optimize_chrome_memory.ps1
```

### 手动启动优化模式

```powershell
$chromeExe = "C:\Program Files\Google\Chrome\Application\chrome.exe"
$args = @(
    "--memory-pressure-off",
    "--disable-background-networking",
    "--disable-features=TranslateUI,ChromeWhatsNewUI,InterestFeedContentSuggestions",
    "--disable-preconnect",
    "--disable-sync",
    "--renderer-process-limit=10",
    "--max_old_space_size=4096"
)
Start-Process -FilePath $chromeExe -ArgumentList $args
```

### 直接编辑 Chrome 配置文件

打开 chrome://settings/performance 手动开启内存节省器和省电模式。

## 优化原理

| 优化项 | 作用 | 减少内存 |
|-------|------|---------|
| Memory Saver | 冻结不活跃标签 | ~30-50% |
| 渲染进程限制 | 限制进程上限 | ~20-30% |
| 禁用后台联网/同步 | 减少后台占用 | ~5-10% |
| 清理缓存 | 删除积压缓存 | ~100-500MB |
| V8 堆限制 | 限制 JS 引擎内存 | ~10-20% |

## 参数调优

编辑脚本顶部配置区：
- MemoryLimitMB: 内存上限（小内存改 2048）
- MaxRendererProcesses: 进程数上限（小内存改 5）
- InactiveTimeoutMin: 标签冻结时间（激进改 5）

