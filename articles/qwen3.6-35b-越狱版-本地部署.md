最近 AI 圈，真的越来越离谱了。如果你一直关注本地大模型，应该已经发现：现在的开源模型，不仅越来越聪明，甚至已经开始挑战很多闭源商业 AI。而今天要介绍的这个模型，更是直接把“本地 AI”推向了另一个阶段。
它就是：**Qwen3.6-35B-A3B Uncensored HauhauCS Aggressive**
![20260524094928 092626](https://www.freedidi.com/wp-content/uploads/2026/05/20260524094928_092626.webp)
一个目前热度极高的“越狱版”开源模型。而且重点是：它不仅无审查、无限制，还非常聪明。甚至可以说：这可能是目前最强的越狱版开源模型之一。
# 什么是“越狱版”模型？
简单来说：
官方模型通常会加入大量安全限制。
比如：
- 敏感内容拒答
- 某些问题无法回答
- 强制政治正确
- 输出被过滤
- 系统提示词限制
所以很多时候：
你明明只是正常提问。
结果模型却：
“抱歉，我无法帮助你。”
而这类 Uncensored（无审查）版本：
则会尽可能移除这些限制。
尤其这个：
## Aggressive 版本
可以说是：
目前最激进的版本之一。
# 官方模型 VS 越狱版模型
实测效果非常夸张。同样的问题：
官方模型：
- 疯狂拒答
- 强制安全策略
- 输出保守
而越狱版：
不仅会回答。
甚至：
- 什么都敢说
- 什么都肯干
- 几乎没有限制
![20260524103741 562767 scaled](https://www.freedidi.com/wp-content/uploads/2026/05/20260524103741_562767-scaled.webp)
而且最关键的是：
它并不是那种：
“只会越狱，但智商很低”的模型。
恰恰相反。
这个模型：
真的非常聪明。
# 部署教程：
### **1、模型下载**
【[**huggingface 下载**](https://huggingface.co/HauhauCS/Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive)】、【[**网盘打包下载**](https://pan.quark.cn/s/d971b8a8b139)】、或 【[**备用下载**](https://pan.cloudeop.com/s/E4DA92E9D490EF3D)】
模型来源：[O站社区](https://www.ozabc.com/t/topic/1803)
里面有多种不同大小的量化版，你可以根据自己的显存大小，来选择对应的版本，最小的11G模型可以在6G/8G显存上跑起来，但是建议最低使用8G显存
![20260524095235 493861 scaled](https://www.freedidi.com/wp-content/uploads/2026/05/20260524095235_493861-scaled.webp)
### 2、下载 llama.cpp
**下载方式**：【[**Github下载**](https://github.com/ggml-org/llama.cpp)】、【[**网盘下载**](https://pan.quark.cn/s/7ba7a646cc64)】或 【[**整合包下载**](https://pan.cloudeop.com/s/49D328C85F506E4F)】
### 这款免费开源项目支持 N卡、A卡、I卡 还有纯CPU运行，同时也可以在Mac、Linux系统上运行！也就意味着，你几乎可以在任何电脑上进行运行。速度还非常快，远比ollama、LM Studio 快的多也稳定的多！！
![20260524095705 536710 scaled](https://www.freedidi.com/wp-content/uploads/2026/05/20260524095705_536710-scaled.webp)
### 3、一键启动脚本（支持多版本切换）
将下面的的脚本另存为BAT批处理，保存的时候选择utf-8格式，嫌麻烦直接【[**点击下载**](https://pan.quark.cn/s/b84ea7c100ea)】打包版
```
@echo off
chcp 65001 >nul
title Qwen3.6-35B-A3B 越狱版

cd /d "%~dp0"

:menu
cls
echo ==========================================
echo      Qwen3.6-35B-A3B 越狱版+多模态模型
echo               零度优化版
echo ==========================================
echo.
echo 1. Q4_K_P（4090 推荐）
echo 2. Q4_K_M（稳定版）
echo 3. IQ4_NL（高压缩高质量）
echo 4. IQ2_M（6G/8G 显卡）
echo.
echo ==========================================

set /p choice=请输入数字：

if "%choice%"=="1" (
    llama-server.exe ^
    -m "models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-Q4_K_P.gguf" ^
    --mmproj "models\mmproj-Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-f16.gguf" ^
    -ngl 999 ^
    -c 131072 ^
    -n 8192 ^
    --host 127.0.0.1 ^
    --port 8080
)

if "%choice%"=="2" (
    llama-server.exe ^
    -m "models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-Q4_K_M.gguf" ^
    --mmproj "models\mmproj-Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-f16.gguf" ^
    -ngl 999 ^
    -c 131072 ^
    -n 8192 ^
    --host 127.0.0.1 ^
    --port 8080
)

if "%choice%"=="3" (
    llama-server.exe ^
    -m "models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-IQ4_NL.gguf" ^
    --mmproj "models\mmproj-Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-f16.gguf" ^
    -ngl 999 ^
    -c 131072 ^
    -n 8192 ^
    --host 127.0.0.1 ^
    --port 8080
)

if "%choice%"=="4" (
    llama-server.exe ^
    -m "models\Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-IQ2_M.gguf" ^
    --mmproj "models\mmproj-Qwen3.6-35B-A3B-Uncensored-HauhauCS-Aggressive-f16.gguf" ^
    -ngl 999 ^
    -c 8192 ^
    -n 4096 ^
    --host 127.0.0.1 ^
    --port 8080
)

pause
```
![20260524100109 012895 scaled](https://www.freedidi.com/wp-content/uploads/2026/05/20260524100109_012895-scaled.webp)
### 打开后在上面选择对应的模型，输入对应的数字确认即可启动！
**注意：****如果启动后出现乱码**，则：进入系统设置中心，在顶部搜索关键词：系统区域设置，打开选择用于非Unicode程序的语言，然后勾选 Beta版：使用 Unicode UTF-8 提供全球语言支持；重启电脑再打开就不会乱码！ 如下图所示：
![20260528025432 937912](https://www.freedidi.com/wp-content/uploads/2026/05/20260528025432_937912.webp)
当然需要真正实现tokens自由，本地不受限制，完全免费使用AI Agent，那么将其对接到Hermes或者OpenClaw 小龙虾上去，才能真正体现出它的价值所在。
## **AI Agent 对接步骤：**
1、在选择模型提供商的时候，选择自定义
![20260524100404 821676 scaled](https://www.freedidi.com/wp-content/uploads/2026/05/20260524100404_821676-scaled.webp)
2、API base 地址填写：
```
http://127.0.0.1:8080/v1
```
API key 密钥随便填写一个数字或留空都可以
3、其它设置可以根据自己的喜好进行自定义
![20260524100746 174902 scaled](https://www.freedidi.com/wp-content/uploads/2026/05/20260524100746_174902-scaled.webp)
# Qwen3.6-35B-A3B 为什么这么强？
![20260524100232 571605 scaled](https://www.freedidi.com/wp-content/uploads/2026/05/20260524100232_571605-scaled.webp)
很多人看到：
## 35B
第一反应是：
“这得服务器才能跑吧？”
但实际上：
Qwen3.6-35B-A3B 用的是：
# MoE（专家混合架构）
简单理解：
虽然模型总参数是 35B。
但每次实际运行时：
只会激活大约 3B 参数。
这意味着：
它既拥有超大模型的能力。
又拥有小模型的速度。
# 6G 显存都能跑？
是的。
这也是它最夸张的地方之一。
通过 GGUF 量化后：
甚至：
- 6G 显存
- 8G 显存
- 普通游戏显卡
都能运行。
并且支持：
- NVIDIA 显卡
- AMD 显卡
- Intel Arc 显卡
真正实现：
# 本地 AI 自由
# 在 Artificial Analysis 排行榜中表现极强
目前在全球权威 AI 榜单：
# Artificial Analysis
![20260524101123 401057](https://www.freedidi.com/wp-content/uploads/2026/05/20260524101123_401057.webp)
Qwen3.6-35B-A3B 在 40B 以内开源模型中：
几乎属于第一梯队。
尤其：
- 中文理解
- 代码能力
- 多模态视觉
- 推理能力
- 长上下文能力
表现都非常夸张。
尤其中文能力。
可以说：
这是目前中文体验最强的一批开源模型。
# 多模态支持也非常离谱
这次不仅支持文本。
还支持：
# 多模态视觉识图
也就是说：
它可以直接：
- 看图片
- 分析截图
- OCR 识别
- 理解画面内容
- 分析复杂 UI
- 阅读代码截图
配合 llama.cpp 最新版后：
甚至已经可以当：
# 本地版 ChatGPT Vision
来使用。
![20260524101147 350126](https://www.freedidi.com/wp-content/uploads/2026/05/20260524101147_350126.webp)
# 本地部署非常简单
这次部署方案：
我使用的是：
# llama.cpp 最新版
优点非常明显：
- 免费
- 开源
- 支持 Windows
- 支持 CUDA
- 支持 Vulkan
- 支持 AMD
- 支持 Intel
而且：
现在 llama.cpp 已经越来越成熟。
不仅支持：
- OpenAI API
- 多模态
- 超长上下文
- Agent 调用
甚至还能直接：
# 本地替代 OpenAI API
# Hermes Agent 实测效果惊艳
这次我还把它：
接入了 Hermes Agent。
效果可以说：
非常炸裂。
因为现在：
你不仅仅是在“聊天”。
而是：
真正拥有了一个：
# 本地 AI Agent
它可以：
- 自动写代码
- 自动分析图片
- 自动执行任务
- 自动工具调用
- 自动联网
- 长上下文记忆
而且：
完全本地运行。
不用联网。
不用 API Key。
没有 Token 消耗。
真正实现：
- Token 自由
- Agent 自由
- 本地 AI 自由
# 推荐量化版本
不同显卡。
推荐不同量化。
## RTX 4090 / 24G 显存
推荐：
- Q4_K_P
- Q4_K_M
体验最好。
## 8G 显存用户
推荐：
- IQ2_M
- IQ3_M
也能正常运行。
# 推荐 llama.cpp 参数
推荐启动参数：
```
llama-server.exe ^
-m "模型路径.gguf" ^
--mmproj "mmproj.gguf" ^
-ngl 999 ^
-c 131072 ^
-n 8192 ^
--host 127.0.0.1 ^
--port 8080 ^
--jinja
```
其中：
## `--mmproj`
是多模态必须参数。
否则：
上传图片按钮会变灰。
## `--jinja`
则是新版 Qwen 模型非常重要的参数。
不加的话：
可能出现：
- 回复异常
- 格式错乱
- 无限重复
- 中文异常
# 现在的本地 AI，已经完全变了
很多人对本地模型的印象：
还停留在：
- 很笨
- 很慢
- 只能聊天
- 无法实用
但现在。
真的不一样了。
尤其：
Qwen3.6-35B-A3B 这种模型出现后。
本地 AI 已经开始：
真正接近商业闭源模型。
而且：
完全属于你自己。
# 最后
如果你一直想体验：
- 无审查 AI
- 本地 AI
- 多模态 AI
- 本地 Agent
- 超长上下文
- 本地 OpenAI API
那么：
这个模型。真的非常值得尝试。因为现在这种资源：谁也不知道还能存在多久。建议尽快收藏、下载、备份！
### 感谢您的支持
Tags:[hermes](https://www.freedidi.com/tag/hermes)[Hermes Agent](https://www.freedidi.com/tag/hermes-agent)
- [**Next**](https://www.freedidi.com/24310.html)[OpenAI Codex 彻底免费了！Ollama 接管 AI 编程 Agent，本地大模型开始自动干活！真爽](https://www.freedidi.com/24310.html)
- [**Previous**](https://www.freedidi.com/24267.html)[8G 显存逆天了！RTX3070 成功跑 Qwen3.6-35B 多模态AI大模型！部署教程（优化脚本）｜零度解说](https://www.freedidi.com/24267.html)
## [微软的 AI 聊天机器人比 ChatGPT 更好用吗？新版bing上体验后给出答案 | 零度解说](https://www.freedidi.com/8558.html)
- 2023年2月28日
## [MuseV  数字虚拟人视频生成AI工具，一键整合包，开箱即用！](https://www.freedidi.com/12271.html)
- 2024年4月28日
## [赶紧下载！7款 “限时免费” 软件！得到就是赚到，为你省下数百刀…. | 零度解说](https://www.freedidi.com/20867.html)
- 2025年10月3日
## [超真实 Stable Diffusion AI 大模型！完全免费，生成图片光效氛围感爆棚！！| 零度解说](https://www.freedidi.com/13146.html)
- 2024年7月30日
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
[AI](https://www.freedidi.com/category/ai)/[OpenAI](https://www.freedidi.com/category/openai)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[ChatGPT「学习模式」火爆上线！免费使用，教育AI要崩盘？最新实测来了! | 零度解说](https://www.freedidi.com/20334.html)
2025年7月31日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Wan2.2-Animate 图片转视频！完美角色一致性，动画替换模型，本地部署教程！](https://www.freedidi.com/20685.html)
2025年9月23日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Ventoy 使用教程, 当下最好用的U盘启动盘制作神器！](https://www.freedidi.com/21182.html)
2025年10月20日
[gemini](https://www.freedidi.com/category/gemini)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[谷歌突然发布 Gemini 3.0！强到离谱，Pro 版免费开放使用，附实测与开通教程！| 零度解说](https://www.freedidi.com/21720.html)
2025年11月19日
[VPN](https://www.freedidi.com/category/vpn)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[免费高速的V2ray节点，下载速度可以飙到920M+ ！来自Amazon的无限分享](https://www.freedidi.com/22225.html)
2025年12月28日
- pubo64178418 says:[价格呢？是多少？](https://www.freedidi.com/15144.html#comment-1305)
- huige2012 says:[我去组装一台台式电脑吧，可以帮我写一份配…](https://www.freedidi.com/?p=21947#comment-1304)
- admin says:[如果你的账号之前开通过付费业务，那么你需…](https://www.freedidi.com/?p=22004#comment-1303)
- admin says:[笔记本 RTX4060显卡的显存只有8G…](https://www.freedidi.com/?p=21947#comment-1302)
- huige2012 says:[有远程操作指导的嘛？](https://www.freedidi.com/?p=21947#comment-1301)
- [18](https://www.freedidi.com/tag/18)[2021](https://www.freedidi.com/tag/2021)[ChatGPT](https://www.freedidi.com/tag/chatgpt)[chrome](https://www.freedidi.com/tag/chrome)[edge](https://www.freedidi.com/tag/edge)[edge浏览器](https://www.freedidi.com/tag/edge%e6%b5%8f%e8%a7%88%e5%99%a8)[ExpressVPN](https://www.freedidi.com/tag/expressvpn)[google voice](https://www.freedidi.com/tag/google-voice)[Hermes Agent](https://www.freedidi.com/tag/hermes-agent)[mac os](https://www.freedidi.com/tag/mac-os)[openclaw](https://www.freedidi.com/tag/openclaw)[SS](https://www.freedidi.com/tag/ss)[ssr](https://www.freedidi.com/tag/ssr)[VIP](https://www.freedidi.com/tag/vip)[vpn](https://www.freedidi.com/tag/vpn)[VPN推荐](https://www.freedidi.com/tag/vpn%e6%8e%a8%e8%8d%90)[win10优化](https://www.freedidi.com/tag/win10%e4%bc%98%e5%8c%96)[windows 10](https://www.freedidi.com/tag/windows-10)[Windows 11](https://www.freedidi.com/tag/windows-11)[会员](https://www.freedidi.com/tag/%e4%bc%9a%e5%91%98)[免费VPN](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9vpn)[免费软件](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9%e8%bd%af%e4%bb%b6)[双系统](https://www.freedidi.com/tag/%e5%8f%8c%e7%b3%bb%e7%bb%9f)[国外VPS推荐](https://www.freedidi.com/tag/%e5%9b%bd%e5%a4%96vps%e6%8e%a8%e8%8d%90)[好用的vpn](https://www.freedidi.com/tag/%e5%a5%bd%e7%94%a8%e7%9a%84vpn)[安卓子系统](https://www.freedidi.com/tag/%e5%ae%89%e5%8d%93%e5%ad%90%e7%b3%bb%e7%bb%9f)[挖矿](https://www.freedidi.com/tag/%e6%8c%96%e7%9f%bf)[排名前五的VPN](https://www.freedidi.com/tag/%e6%8e%92%e5%90%8d%e5%89%8d%e4%ba%94%e7%9a%84vpn)[最好的vpn](https://www.freedidi.com/tag/%e6%9c%80%e5%a5%bd%e7%9a%84vpn)[比特币](https://www.freedidi.com/tag/%e6%af%94%e7%89%b9%e5%b8%81)[油猴插件](https://www.freedidi.com/tag/%e6%b2%b9%e7%8c%b4%e6%8f%92%e4%bb%b6)[浏览器](https://www.freedidi.com/tag/%e6%b5%8f%e8%a7%88%e5%99%a8)[电脑优化](https://www.freedidi.com/tag/%e7%94%b5%e8%84%91%e4%bc%98%e5%8c%96)[神器](https://www.freedidi.com/tag/%e7%a5%9e%e5%99%a8)[科学上网](https://www.freedidi.com/tag/%e7%a7%91%e5%ad%a6%e4%b8%8a%e7%bd%91)[网站推荐](https://www.freedidi.com/tag/%e7%bd%91%e7%ab%99%e6%8e%a8%e8%8d%90)[翻墙](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99)[翻墙vpn](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vpn)[翻墙VPS](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vps)[老司机](https://www.freedidi.com/tag/%e8%80%81%e5%8f%b8%e6%9c%ba)[谷歌浏览器](https://www.freedidi.com/tag/%e8%b0%b7%e6%ad%8c%e6%b5%8f%e8%a7%88%e5%99%a8)[软件推荐](https://www.freedidi.com/tag/%e8%bd%af%e4%bb%b6%e6%8e%a8%e8%8d%90)[零度解密](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e5%af%86)[零度解说](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e8%af%b4)[黑苹果安装教程](https://www.freedidi.com/tag/%e9%bb%91%e8%8b%b9%e6%9e%9c%e5%ae%89%e8%a3%85%e6%95%99%e7%a8%8b)
### 归档
### 分类
