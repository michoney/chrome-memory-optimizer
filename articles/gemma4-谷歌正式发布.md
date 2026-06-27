就在昨天，谷歌正式发布了迄今为止最智能的开源大模型 ——**Gemma 4**。这次发布可以说在AI圈引发了不小的轰动，因为它主打两个关键词：
- ✅ 本地运行
- ✅ 多模态能力
一经上线，评价普遍非常高，甚至被认为是当前最值得关注的开源模型之一。
![2026 04 04 14 46 49.00 00 08 07.Still006 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-04-14-46-49.00_00_08_07.Still006-scaled.webp)
## 一、Gemma 4 有哪些版本？
这次谷歌一共推出了**4个不同规模的模型版本**，覆盖从手机到高端GPU的全场景使用。
### 轻量级（移动端 / IoT）
- 2B（20亿参数）
- 4B（40亿参数）
特点：
- 更低延迟
- 强调多模态能力
- 可运行在手机甚至物联网设备上
![2026 04 04 14 46 49.00 00 49 24.Still007 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-04-14-46-49.00_00_49_24.Still007-scaled.webp)
### 高性能（本地GPU）
- 26B（专家混合模型）
- 31B（稠密模型）
特点：
- 支持复杂推理
- 可用于编程助手、Agent系统
- 完全支持离线运行
## 二、性能到底有多强？
谷歌表示：
Gemma 4 在“单位参数智能水平”上达到了前所未有的高度。
在 Arena-Hard 排行榜中：
- 31B → 排名第3
- 26B → 排名第6
![20260404 1775301224](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775301224.webp)
甚至**超过了一些规模大20倍的模型**。
这意味着：
**效率 > 参数量，真正实现“小模型干大事”**
![20260404 1775301175](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775301175.webp)
## 三、核心能力一览
Gemma 4 不只是一个文本模型，它已经是一个完整的 AI 系统能力集合：
### 多模态能力
- 图像识别（OCR）
- 视频理解
- 音频输入（小模型支持）
![2026 04 04 14 46 49.00 01 31 06.Still008 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-04-14-46-49.00_01_31_06.Still008-scaled.webp)
### 编程能力
- 离线代码生成
- Web开发支持
- 自动生成 Docker 配置
### Agent能力
- 自动任务执行
- 工具调用
- 工作流自动化
### 多语言支持
- 支持 140+ 语言
### 隐私 & 本地化
- 完全离线运行
- 数据不上传云端
- 更适合企业/个人隐私场景
- 可以轻松对接 OpenClaw 小龙虾进行使用
![2026 04 04 14 46 49.00 00 20 15.Still009 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-04-14-46-49.00_00_20_15.Still009-scaled.webp)
## 四、开源协议（重点）
Gemma 4 使用的是：
👉**Apache 2.0 协议**
意味着：
- ✅ 免费商用
- ✅ 可修改
- ✅ 可二次开发
- ✅ 可私有部署
👉 这一点对开发者来说非常重要
## 五、本地部署配置要求
根据官方说明，不同版本对显存要求如下：
👉 举个例子：
- RTX 4090（24GB） 👉 可以运行 26B / 31B 量化版
## 六、如何本地安装（Ollama方式）
推荐使用：Ollama
### 第一步：下载 Ollama
### 【[**点击前往**](https://ollama.com/)】
![20260404 1775301487](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775301487.webp)
进入官网下载安装（支持）：
- Windows
- Mac
- Linux
### 第二步：下载 Gemma 4 模型
【[**HuggingFace**](https://huggingface.co/blog/gemma4)】、【[**Ollama**](https://ollama.com/library/gemma4)】或**下载满血版**【[**模型打包下载**](https://pan.quark.cn/s/04ada6c27b5e)】
安装  Ollama 后在CMD终端下执行：
```
ollama run gemma4
```
或者选择适合你显卡的版本（非常重要❗）
![20260404 1775301658](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775301658.webp)
### 第三步：对接OpenClaw
在Powershell下以管理员身份运行：
```
powershell -c "irm https://openclaw.ai/install.ps1 | iex"
```
安装最新版的小龙虾
安装后在执行命令：
```
ollama launch openclaw
```
即可启动！
![20260404 1775301984 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775301984-scaled.webp)
### 第四步：对接Claude Code
**1、Windows CMD:**
```
curl -fsSL https://claude.ai/install.cmd -o install.cmd && install.cmd && del install.cmd
```
2、**macOS, Linux, WSL:**
```
curl -fsSL https://claude.ai/install.sh | bash
```
安装后再执行
```
ollama launch claude
```
![20260404 1775301926](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775301926.webp)
## 七、实测效果展示
根据实际测试，Gemma 4 表现非常亮眼：
### 1. 逻辑推理能力
输入问题：
为什么端口映射后外网无法访问？
模型可以：
- 自动分析网络结构
- 找出逻辑矛盾
- 给出排查步骤
推理能力非常稳定
![20260404 1775302038 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775302038-scaled.webp)
### 2. 图像 + 编程能力
上传一张架构图，它可以：
- 自动识别系统结构
- 生成完整 Docker 部署方案
真正做到：**看图写代码**
### 3. AI生成游戏
仅通过一张截图：
自动生成一个可运行的小游戏
测试结果：
- 游戏可运行
- 有完整逻辑
![20260404 1775302098](https://www.freedidi.com/wp-content/uploads/2026/04/20260404_1775302098.webp)
- 体验流畅
### 4. Agent自动化能力
结合工具后可以实现：
- 自动抓取新闻
- 自动翻译
- 自动生成博客（Markdown）
已接近自动内容生产系统
## 八、使用建议（非常重要）
根据你的显卡来选模型：
- 8GB 显存 👉 选择小模型
- 12GB 👉 中等量化版
- 24GB 👉 推荐 26B 或 31B
不要盲目上最大模型，否则会：
- ❌ 卡顿严重
- ❌ 推理速度慢
## 九、总结
这次**Gemma 4**的发布，可以说是：
开源AI的一次重大突破
它带来的核心变化是：
- 更强推理
- 真正多模态
- 完全本地运行
- 原生支持Agent
## 一句话总结
**如果你想要一个能本地运行、性能强、还能做自动化工作的AI模型，Gemma 4 是目前最值得尝试的选择之一。**
### 感谢您的支持
- [**Next**](https://www.freedidi.com/23669.html)[零成本！普通手机跑最强 Gemma 4 模型 (原生多模态)，安卓+iPhone 部署实测体验！](https://www.freedidi.com/23669.html)
- [**Previous**](https://www.freedidi.com/23618.html)[2026 最强 Cloudflare 免费节点！永久可用+免费域名｜10分钟搭建｜解锁 ChatGPT / Gemini ！](https://www.freedidi.com/23618.html)
## [7个务必知道的 Windows 电脑技巧！每一个都会对你有很大帮助 | 零度解说](https://www.freedidi.com/5098.html)
- 2022年5月26日
## [谷歌的 Android 12 更新是多年来最艰难的一次](https://www.freedidi.com/3322.html)
- 2022年1月15日
## [不知道rar、zip压缩包密码怎么办？ 破开它其实很容易！只需2步即可搞定 | 零度解说](https://www.freedidi.com/2660.html)
- 2021年12月22日
## [IDM不显示悬浮条的彻底解决办法](https://www.freedidi.com/691.html)
- 2020年10月2日
![](https://www.freedidi.com/wp-content/uploads/2026/06/20260608041301_407040.webp)
### 近期文章
- [Ideogram 4 最强 AI 图片生成模型，真正媲美 GPT-Image / Midjourney ，完全免费开源，支持本地部署！](https://www.freedidi.com/24609.html)
- [Claude Mythos 5 被“蒸馏”了？Qwythos-9B 突然开源，百万 Token 上下文，4GB 显存即可部署！](https://www.freedidi.com/24592.html)
- [Windows Copilot 被逆向！无需 API Key 免费白嫖 GPT-5，对接本地AI Agent，部署教程来了！](https://www.freedidi.com/24570.html)
- [GLM 5.2 正式开源！百万上下文、Agent 编程能力登顶，模型下载及本地部署！](https://www.freedidi.com/24513.html)
- [最强AI模型被禁！这3款开源越狱模型才是安全首选，附下载及本地部署！](https://www.freedidi.com/24498.html)
- [Recent Posts](#tab-recent-4)
- [Popular Posts](#tab-popular-4)
- [Recent Comments](#tab-comments-4)
- [Tags](#tab-tags-4)
[AI](https://www.freedidi.com/category/ai)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Ideogram 4 最强 AI 图片生成模型，真正媲美 GPT-Image / Midjourney ，完全免费开源，支持本地部署！](https://www.freedidi.com/24609.html)
2026年6月26日
[AI](https://www.freedidi.com/category/ai)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Claude Mythos 5 被“蒸馏”了？Qwythos-9B 突然开源，百万 Token 上下文，4GB 显存即可部署！](https://www.freedidi.com/24592.html)
2026年6月24日
[AI](https://www.freedidi.com/category/ai)/[OpenAI](https://www.freedidi.com/category/openai)/[OpenClaw](https://www.freedidi.com/category/openclaw)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Windows Copilot 被逆向！无需 API Key 免费白嫖 GPT-5，对接本地AI Agent，部署教程来了！](https://www.freedidi.com/24570.html)
2026年6月22日
[AI](https://www.freedidi.com/category/ai)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[GLM 5.2 正式开源！百万上下文、Agent 编程能力登顶，模型下载及本地部署！](https://www.freedidi.com/24513.html)
2026年6月18日
[AI](https://www.freedidi.com/category/ai)/[Claude](https://www.freedidi.com/category/claude)/[Gemma](https://www.freedidi.com/category/gemma)/[Llama](https://www.freedidi.com/category/llama)/[OpenClaw](https://www.freedidi.com/category/openclaw)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[最强AI模型被禁！这3款开源越狱模型才是安全首选，附下载及本地部署！](https://www.freedidi.com/24498.html)
2026年6月16日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Ghost Downloader 3 – 开源、跨平台、智能多线程下载神器 （Win/Mac/Linux）](https://www.freedidi.com/20155.html)
2025年7月15日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[EarTrumpet 电脑声音多通道分区控制！](https://www.freedidi.com/20560.html)
2025年9月10日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Xdown 下载器：轻量、高性能的国产全能下载工具](https://www.freedidi.com/20988.html)
2025年10月10日
[OpenAI](https://www.freedidi.com/category/openai)/[Sora](https://www.freedidi.com/category/sora)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[OpenAI 正式发布 Sora 2 安卓版！免费注册、邀请码、美区代理IP、生成有趣的AI视频，全部轻松搞定！| 零度解说](https://www.freedidi.com/21447.html)
2025年11月5日
[gemini](https://www.freedidi.com/category/gemini)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)/[限免](https://www.freedidi.com/category/%e9%99%90%e5%85%8d)
[Gemini 3 Pro 免费玩！只要一个Gmail邮箱即可搞定，无需信用卡、无需认证！](https://www.freedidi.com/22053.html)
2025年12月14日
- pubo64178418 says:[价格呢？是多少？](https://www.freedidi.com/15144.html#comment-1305)
- huige2012 says:[我去组装一台台式电脑吧，可以帮我写一份配…](https://www.freedidi.com/?p=21947#comment-1304)
- admin says:[如果你的账号之前开通过付费业务，那么你需…](https://www.freedidi.com/?p=22004#comment-1303)
- admin says:[笔记本 RTX4060显卡的显存只有8G…](https://www.freedidi.com/?p=21947#comment-1302)
- huige2012 says:[有远程操作指导的嘛？](https://www.freedidi.com/?p=21947#comment-1301)
- [18](https://www.freedidi.com/tag/18)[2021](https://www.freedidi.com/tag/2021)[ChatGPT](https://www.freedidi.com/tag/chatgpt)[chrome](https://www.freedidi.com/tag/chrome)[edge](https://www.freedidi.com/tag/edge)[edge浏览器](https://www.freedidi.com/tag/edge%e6%b5%8f%e8%a7%88%e5%99%a8)[ExpressVPN](https://www.freedidi.com/tag/expressvpn)[google voice](https://www.freedidi.com/tag/google-voice)[Hermes Agent](https://www.freedidi.com/tag/hermes-agent)[mac os](https://www.freedidi.com/tag/mac-os)[openclaw](https://www.freedidi.com/tag/openclaw)[SS](https://www.freedidi.com/tag/ss)[ssr](https://www.freedidi.com/tag/ssr)[VIP](https://www.freedidi.com/tag/vip)[vpn](https://www.freedidi.com/tag/vpn)[VPN推荐](https://www.freedidi.com/tag/vpn%e6%8e%a8%e8%8d%90)[win10优化](https://www.freedidi.com/tag/win10%e4%bc%98%e5%8c%96)[windows 10](https://www.freedidi.com/tag/windows-10)[Windows 11](https://www.freedidi.com/tag/windows-11)[会员](https://www.freedidi.com/tag/%e4%bc%9a%e5%91%98)[免费VPN](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9vpn)[免费软件](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9%e8%bd%af%e4%bb%b6)[双系统](https://www.freedidi.com/tag/%e5%8f%8c%e7%b3%bb%e7%bb%9f)[国外VPS推荐](https://www.freedidi.com/tag/%e5%9b%bd%e5%a4%96vps%e6%8e%a8%e8%8d%90)[好用的vpn](https://www.freedidi.com/tag/%e5%a5%bd%e7%94%a8%e7%9a%84vpn)[安卓子系统](https://www.freedidi.com/tag/%e5%ae%89%e5%8d%93%e5%ad%90%e7%b3%bb%e7%bb%9f)[挖矿](https://www.freedidi.com/tag/%e6%8c%96%e7%9f%bf)[排名前五的VPN](https://www.freedidi.com/tag/%e6%8e%92%e5%90%8d%e5%89%8d%e4%ba%94%e7%9a%84vpn)[最好的vpn](https://www.freedidi.com/tag/%e6%9c%80%e5%a5%bd%e7%9a%84vpn)[比特币](https://www.freedidi.com/tag/%e6%af%94%e7%89%b9%e5%b8%81)[油猴插件](https://www.freedidi.com/tag/%e6%b2%b9%e7%8c%b4%e6%8f%92%e4%bb%b6)[浏览器](https://www.freedidi.com/tag/%e6%b5%8f%e8%a7%88%e5%99%a8)[电脑优化](https://www.freedidi.com/tag/%e7%94%b5%e8%84%91%e4%bc%98%e5%8c%96)[神器](https://www.freedidi.com/tag/%e7%a5%9e%e5%99%a8)[科学上网](https://www.freedidi.com/tag/%e7%a7%91%e5%ad%a6%e4%b8%8a%e7%bd%91)[网站推荐](https://www.freedidi.com/tag/%e7%bd%91%e7%ab%99%e6%8e%a8%e8%8d%90)[翻墙](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99)[翻墙vpn](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vpn)[翻墙VPS](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vps)[老司机](https://www.freedidi.com/tag/%e8%80%81%e5%8f%b8%e6%9c%ba)[谷歌浏览器](https://www.freedidi.com/tag/%e8%b0%b7%e6%ad%8c%e6%b5%8f%e8%a7%88%e5%99%a8)[软件推荐](https://www.freedidi.com/tag/%e8%bd%af%e4%bb%b6%e6%8e%a8%e8%8d%90)[零度解密](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e5%af%86)[零度解说](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e8%af%b4)[黑苹果安装教程](https://www.freedidi.com/tag/%e9%bb%91%e8%8b%b9%e6%9e%9c%e5%ae%89%e8%a3%85%e6%95%99%e7%a8%8b)
### 归档
### 分类
