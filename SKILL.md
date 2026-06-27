---
name: chrome-memory-optimizer
description: "Chrome 浏览器内存深度优化工具。一键关闭 Chrome、清理缓存、写入内存节省器配置、以优化参数重启。适用于: (1) Chrome 占内存过高 (>2GB) 时一键优化; (2) 系统内存不足需释放资源; (3) 多标签用户希望减少内存占用; (4) 科技博主录制优化教程前重置 Chrome 状态。"
---

# Chrome 内存深度优化

## 概述

本 Skill 提供一套完整的 Chrome 内存优化方案：通过修改 Chrome 原生配置文件启用 Memory Saver（内存节省器）、省电模式、标签丢弃策略，配合启动参数限制渲染进程数和内存上限，大幅降低 Chrome 内存占用。

**典型效果**：优化前 4~5GB → 优化后 1~2GB（取决于标签数量）

## 使用方法

### 一键快速优化

```powershell
# 运行优化脚本（关闭 Chrome → 清理缓存 → 写入配置 → 重启）
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

打开 Chrome 地址栏输入：
```
chrome://settings/performance
```
手动开启内存节省器和省电模式。

## 优化原理

| 优化项 | 作用 | 减少内存 |
|-------|------|---------|
| Memory Saver（内存节省器） | 自动冻结不活跃标签，释放内存 | ~30-50% |
| 渲染进程限制 | 限制 Chrome 进程总数上限 | ~20-30% |
| 禁用后台联网/同步 | 减少后台计算和网络请求占用 | ~5-10% |
| 清理缓存 | 删除累积的磁盘和代码缓存 | ~100-500MB |
| Max Old Space 限制 | 限制 V8 引擎堆内存上限 | ~10-20% |

## 脚本说明

scripts/optimize_chrome_memory.ps1 会自动执行：
1. 强制关闭所有 Chrome 进程
2. 清理 Cache / Code Cache / Media Cache / GPUCache
3. 写入 Preferences 配置文件（启用 memory_saver / battery_saver / tab_discarding）
4. 以优化启动参数重启 Chrome
5. 输出启动后的进程数和内存占用

## 参数调优

打开脚本修改顶部的配置区：
- MemoryLimitMB: 内存上限（小内存电脑可改 2048）
- MaxRendererProcesses: 进程数上限（小内存电脑可改 5）
- InactiveTimeoutMin: 标签冻结时间（激进可改 5）
- CacheSizeLimitMB: 缓存大小
