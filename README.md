# ⚡ michoney 的科技工具箱

> 搞机干货 · AI 教程 · 效率工具 · 智能体横向评测

---

## 📖 目录

- [三大 AI 编程/智能体工具能力对比](#三大-ai-编程智能体工具能力对比)
- [Chrome 内存深度优化](#-chrome-内存深度优化)
- [Ideogram 4 本地部署教程](#-ideogram-4-本地部署教程)

---

# 三大 AI 编程/智能体工具能力对比

> **Codex CLI vs Hermes Agent vs OpenClaw**
>
> 一句话总结三者的定位差异：
> - **Codex CLI** → 终端里的编程助手，专注本地编码 + 子智能体并行
> - **Hermes Agent** → "会成长的智能体" — 自我进化、任何地方运行、多平台持续对话
> - **OpenClaw** → 个人全能助手 — 覆盖 20+ 渠道、自带桌面/手机 App、语音交互

---

## 一、架构与部署

| 能力 | Codex CLI | Hermes Agent | OpenClaw |
|------|-----------|-------------|----------|
| 纯终端 CLI | ✅ | ✅ TUI | ✅ |
| 桌面 App | ❌ | ✅ Hermes Desktop | ✅ macOS/Windows/iOS/Android |
| 云部署 (VPS/服务器) | ❌ | ✅ \$5 VPS / 无服务器 | ❌ (本地为主) |
| Docker 支持 | ❌ | ❌ | ✅ |
| Nix 支持 | ❌ | ❌ | ✅ |
| 网关/守护进程模式 | ❌ | ✅ Gateway | ✅ Gateway Daemon |

## 二、交互渠道

| 能力 | Codex CLI | Hermes Agent | OpenClaw |
|------|-----------|-------------|----------|
| 终端交互 | ✅ | ✅ TUI | ✅ |
| Telegram | ❌ | ✅ | ✅ |
| Discord | ❌ | ✅ | ✅ |
| Slack | ❌ | ✅ | ✅ |
| WhatsApp | ❌ | ✅ | ✅ |
| Signal | ❌ | ✅ | ✅ |
| iMessage | ❌ | ❌ | ✅ |
| 微信 / QQ | ❌ | ❌ | ✅ |
| 飞书 / 钉钉 | ❌ | ❌ | ✅ (飞书/LINE) |
| 邮件 | ❌ | ✅ | ❌ |

## 三、智能能力

| 能力 | Codex CLI | Hermes Agent | OpenClaw |
|------|-----------|-------------|----------|
| 子智能体并行 | ✅ spawn_agent | ✅ Delegates | ✅ Node 系统 |
| 自我学习/进化 | ❌ | ✅ 闭环学习 + DSPy | ❌ |
| 跨会话记忆 | ❌ (单会话) | ✅ FTS5 + LLM 总结 | ❌ |
| 用户画像建模 | ❌ | ✅ Honcho | ❌ |
| 定时任务 (Cron) | ❌ | ✅ | ✅ |
| Webhooks | ❌ | ❌ | ✅ |
| 上下文文件注入 | ✅ AGENTS.md | ✅ Context Files | ❌ |
| 计划系统 | ✅ update_plan | ❌ | ❌ |

## 四、工具 & 扩展

| 能力 | Codex CLI | Hermes Agent | OpenClaw |
|------|-----------|-------------|----------|
| 终端命令执行 | ✅ | ✅ | ✅ |
| 文件读写 | ✅ | ✅ | ✅ |
| 代码补丁 | ✅ apply_patch | ✅ | ✅ |
| MCP 协议 | ✅ | ✅ | ✅ |
| Skills 技能系统 | ✅ | ✅ (agentskills.io) | ✅ |
| 浏览器控制 | ✅ (内嵌 Chrome) | ❌ | ✅ (Canvas) |
| 截图/视觉 | ❌ | ❌ | ✅ Peekaboo |
| 语音交互 | ❌ | ✅ 语音转录 | ✅ 双向语音 |
| 设备节点 (手机/平板) | ❌ | ❌ | ✅ iOS/Android |
| 内网/远程机器调试 | ❌ (仅 SSH 命令) | ✅ VPS 远程 + 消息触发 | ❌ (仅本地节点) |

## 五、安全 & 权限

| 能力 | Codex CLI | Hermes Agent | OpenClaw |
|------|-----------|-------------|----------|
| 命令审批机制 | ✅ | ✅ | ✅ |
| 沙箱隔离 | ✅ | ✅ 容器隔离 | ✅ |
| DM 配对认证 | ❌ | ✅ | ✅ |
| 密钥链存储 | ❌ | ✅ | ✅ |

## 六、生态 & 提供商

| 能力 | Codex CLI | Hermes Agent | OpenClaw |
|------|-----------|-------------|----------|
| 模型锁定 | ⚠️ OpenAI | ✅ 任意模型 | ✅ 任意模型 |
| 支持的渠道数 | 1 (终端) | 6 | 20+ |
| 开源 | ✅ MIT | ✅ MIT | ✅ MIT |
| 插件市场 | ✅ | ✅ Skills Hub | ✅ ClawHub |

## ⚡ 你最关心的：内网机器调试

| 工具 | 能不能做到 |
|------|-----------|
| **Hermes** | ✅ 可以部署在云端 VPS，通过 Telegram/Discord 远程下发指令调试内网机器 |
| **OpenClaw** | ❌ 有节点系统但主要是本地设备配对，不设计为远程调试 |
| **Codex CLI** | ⚠️ 只能通过 exec_command 跑 SSH 命令，无原生远程消息触发能力 |

---

## ⚡ Chrome 内存深度优化

从 **4.5GB → 1GB**，不装任何扩展，纯配置调优。

📁 `scripts/optimize_chrome_memory.ps1` ← Windows 一键运行
📁 `scripts/optimize_chrome_memory.sh` ← Mac 一键运行

```powershell
# Windows
.\scripts\optimize_chrome_memory.ps1
```

```bash
# Mac
chmod +x ./scripts/optimize_chrome_memory.sh
./scripts/optimize_chrome_memory.sh
```

**效果：**

| 项目 | 优化前 | 优化后 |
|------|--------|--------|
| 进程数 | 28 | 12 |
| 内存占用 | 4.5 GB | 1.0 GB |

**优化原理：** Memory Saver 冻结不活跃标签 + 渲染进程限制 + 禁用后台联网 + V8 堆限制 + 清理缓存

---

## 🎨 Ideogram 4 本地部署教程

📁 `articles/ideogram4-本地部署教程.md`

93 亿参数开源 AI 图片生成模型，媲美 Midjourney / GPT-Image，支持 ComfyUI。

```
ideogram4_fp8_scaled.safetensors → ComfyUI/models/diffusion_models/
ideogram4_unconditional_fp8_scaled.safetensors → ComfyUI/models/diffusion_models/
qwen3vl_8b_fp8_scaled.safetensors → ComfyUI/models/text_encoders/
gemma4_e4b_it_fp8_scaled.safetensors → ComfyUI/models/text_encoders/
flux2-vae.safetensors → ComfyUI/models/vae/
```

---

## 📺 科技博主系列

持续更新中：
- ✅ 三大智能体横向对比（Codex CLI vs Hermes vs OpenClaw）
- ✅ Chrome 内存优化（从 4.5GB 降到 1GB）
- ✅ AI 编程王者实测：ChatGPT5.5 vs Claude 4.7 vs DeepSeek V4 vs Qwen 3.6
- ✅ Qwen3.6-Plus 发布：最强编程 AI，两天登顶
- ✅ DeepSeek-V4 正式发布：免费开源 + 百万上下文
- ✅ ChatGPT Images 2.0 正式发布：OpenAI 最强图片模型
- ✅ OpenClaw 免费接入 ChatGPT Images 2.0（无需 API Key / 无需 Token）
- ✅ Open Claw + 本地模型：免费无限 Token 的 ChatGPT 平替方案
- ✅ Hermes Agent 本地部署实战：从安装到 Telegram 控制
- ✅ Hermes Agent 部署 UI + 本地模型，对接微信（完全免费）
- ✅ Hermes + Qwen3.6：本地最强 Agent 组合
- ✅ Holo 3.1 Agent 本地部署实测（免费无限 Token + 接入 OpenClaw）
- ✅ Claude Code + Ollama 免费本地 AI 编程助手（CC Switch 教程）
- ✅ Qwen3.6-35B 越狱版部署教程（目前最强无审查开源模型 / 6G显存可跑）
- ✅ RTX3070 8G 成功跑 Qwen3.6 多模态（llama.cpp + MoE 优化教程）
- ✅ llama.cpp 新版发布：Windows 预编译 + CUDA13/Vulkan/HIP 全面支持
- ✅ Ideogram 4 本地部署教程
- ✅ Z-Image Turbo 本地安装教程（支持 NSFW / 8G显存可跑）
- ✅ Sulphur 2 无审查 AI 视频模型本地部署（8G显存可跑）
- ✅ Gemma 4 正式发布 + 本地部署教程
- ✅ 手机跑 Gemma 4 原生多模态（安卓 + iPhone 实测）
- ✅ Cloudflare 免费节点搭建（永久可用 + 免费域名）
- ✅ Pearl (PRL) 珍珠币挖矿教程（显卡矿工回归！单卡日收益 $10）
- 🔄 更多 AI 工具教程 coming soon...
---

**Made with ❤️ by michoney**

[![GitHub stars](https://img.shields.io/github/stars/michoney/chrome-memory-optimizer?style=social)](https://github.com/michoney/chrome-memory-optimizer)















