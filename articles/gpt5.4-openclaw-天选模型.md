就在昨晚凌晨两点，OpenAI毫无预兆地丢出了一个重磅更新——GPT-5.4。毫无疑问，这个模型正在改写 2026 年 AI Agent 的主线剧情。这一次，大家等了很久的核心能力终于真正落地：原生操控电脑。
![1772735578 openai gpt 5.4 model](https://www.freedidi.com/wp-content/uploads/2026/03/1772735578_openai_gpt-5.4_model.webp)
而在我第一时间实测之后，可以非常直接地说一句：GPT-5.4 很可能是目前最适合跑OpenClaw的模型，甚至没有之一。尤其是在原生操控电脑方面，达到前所未有的水平。
## 原生操控电脑，真正的 Agent 分水岭
Agent 能力，是 2026 年 AI 进化的主线任务。过去的模型更多停留在“生成内容”“回答问题”层面，而 GPT-5.4 直接进入了“执行任务”的阶段。它不仅能理解指令，更能真正操控电脑环境。
![屏幕截图 2026 03 07 194029](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-194029.png)
![070cb7f3 993b 478d 9ac6 c23b33eb6417](https://www.freedidi.com/wp-content/uploads/2026/03/070cb7f3-993b-478d-9ac6-c23b33eb6417.gif)
只要是打工人日常在电脑上能做的事情，它几乎都能完成。这已经不是简单的“聊天机器人”，而是一个具备完整操作链条的数字执行者。
## Web 版 + Codex 同步上线，Windows 用户也能用
目前 GPT-5.4 已经在网页版以及OpenAI Codex中上线。
昨晚 OpenAI 也同步推出了 Windows 版本的 Codex 客户端，这对 Windows 用户来说意义重大。
![https://cdn.thenewstack.io/media/2026/02/20c44d85-codex-dark-scaled.png](https://www.freedidi.com/wp-content/uploads/2026/03/170658-.png)
### Codex Windows 版下载： 【[**点击前往**](https://openai.com/zh-Hans-CN/codex/)】或 【[**打包下载**](https://pan.quark.cn/s/fcc2e3b225f5)】
这意味着，即使你不部署复杂环境，也可以直接通过 Codex 客户端体验 GPT-5.4 的电脑操控能力。
## 为什么说 GPT-5.4 是 OpenClaw 的“天选模型”
我们都知道，OpenClaw 这只“龙虾”之所以爆火，核心就在于它强大的 Agent 能力。在 Mac mini 上部署的 OpenClaw，几乎拥有与人类一致的操作权限和执行路径。而 GPT-5.4 这一次，是在模型层面就实现了原生电脑操控能力。
![194a6818 25e9 400f 80c3 155afdecf9a4](https://www.freedidi.com/wp-content/uploads/2026/03/194a6818-25e9-400f-80c3-155afdecf9a4.gif)
也就是说，它不再是“外挂式控制”，而是“内生式理解 + 执行”。两者结合，几乎是 2026 年 Agent 形态的最优解。
## 完整的 OpenClaw + GPT-5.4 部署与实测流程：
1、安装并升级到最新版的 OpenClaw，一键安装命令如下：
```
iwr -useb https://openclaw.ai/install.ps1 | iex
```
模型的服务提供商选择OpenAI
![2026 03 07 16 16 22.00 05 22 14.Still003 scaled](https://www.freedidi.com/wp-content/uploads/2026/03/2026-03-07-16-16-22.00_05_22_14.Still003-scaled.webp)
模型登入方式选择OpenAI API key
![2026 03 07 16 16 22.00 05 28 17.Still004 scaled](https://www.freedidi.com/wp-content/uploads/2026/03/2026-03-07-16-16-22.00_05_28_17.Still004-scaled.webp)
## **创建 OpenAI API key：【**[**点击前往**](https://platform.openai.com/settings/organization/api-keys)**】**
![屏幕截图 2026 03 07 203006](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-203006.png)
然后在命令输入框输入密钥确认
在选择模型的时候，请选择GPT-5.3 codex，因为目前OpenClaw还没内置到GPT-5.4模型，但是一会我们可以通过命令进行切换过去。
![屏幕截图 2026 03 07 194659](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-194659.png)
切换模型需要重新开一个新的power shell窗口，并输入第1个切换模型的命令：
```
openclaw onboard --auth-choice openai-codex
```
执行命令以后，在配置选项里Config handling 选择 Update values：
![屏幕截图 2026 03 07 194935](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-194935.png)
确认以后会自动弹窗登入窗口，只需输入你的openAI账号登入即可
![屏幕截图 2026 03 07 195231](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-195231.png)
登入以后，再开一个新的power shell窗口，执行第2个切换模型的命令：
```
openclaw config set agents.defaults.model.primary "openai-codex/gpt-5.4"
```
就可以把当前Openclaw的默认使用模型切换到GPT-5.4上去了
![屏幕截图 2026 03 07 195415](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-195415.png)
![屏幕截图 2026 03 07 195618](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-195618.png)
**注意：**由于通过网页端授权登入的方式，只有Plus、Pro及以上的会员才可以调用GPT-5.4模型，所以要确保你当前登入的OpenAI账号是开通会员的才可以，否则会提示你找不到模型！
## **Mac 电脑**
### **将 OpenClaw 默认模型切换到 GPT-5.4 的命令：**
```
openclaw onboard--auth-choiceopenai-codex
```
执行命令后登入OpenAI账号
![v2 ee3588d7237589fb35af4941e81cfc13 1440w](https://www.freedidi.com/wp-content/uploads/2026/03/v2-ee3588d7237589fb35af4941e81cfc13_1440w.png)
授权登入以后再开新的命令窗口执行下方命令：
```
openclaw configsetagents.defaults.model.primary"openai-codex/gpt-5.4"
```
**重启 OpenClaw 后，问它“你是什么模型”，就会回复**`gpt-5.4`：
![v2 356e309ed4e0eced0b2debd6b3ae4dbd 1440w](https://www.freedidi.com/wp-content/uploads/2026/03/v2-356e309ed4e0eced0b2debd6b3ae4dbd_1440w.jpg)
当然如果你不想开通会员，也想使用最新的GPT-5.4模型，那么你可以通过刚才说的Open Codex 客户端进行安装使用！亲测即使是免费账户，登入以后照样可以使用GPT-5.4模型
![屏幕截图 2026 03 07 200404](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-200404.png)
![屏幕截图 2026 03 07 200532](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-200532.png)
## 核心能力全面升级：
这次升级，不只是“能操作电脑”这么简单。不仅会操作，还更聪明
![屏幕截图 2026 03 07 230515](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-230515.png)
### 知识型工作能力提升
在 GDPval 测试中（覆盖 44 个职业的知识工作能力评估），GPT-5.4 在 83% 的案例中达到持平或更优水平，而 GPT-5.2 为 71%。
在投行级电子表格建模内部测试中：
GPT-5.4：87.5%
GPT-5.2：68.4%
![屏幕截图 2026 03 07 230556](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-230556.png)
在演示文稿评测中，人工评分者在 68% 情况下更偏好 GPT-5.4 生成的作品，原因是：
更好的审美
更丰富的视觉元素
更有效的图像生成配合
对于内容创作者、分析师、咨询顾问来说，这是生产力的实质跃迁。
### 浏览器与网页操控能力
在 WebArena-Verified 测试中：
GPT-5.4 成功率 67.3%
GPT-5.2 为 65.4%
同时使用的token数量也大幅减少
![屏幕截图 2026 03 07 230629](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-230629.png)
在 Online-Mind2Web 测试中，仅凭截图观察成功率达到 92.8%，明显领先早期系统。
这意味着它在真实网页环境中的操作稳定性进一步提升。
### 视觉理解能力强化
在 MMMU-Pro 测试中，无需外部工具即可达到 81.2% 成功率。
在 OmniDocBench 文档解析测试中，平均误差下降至 0.109。
这就是它“原生操控电脑”能力的底层支撑——更强的视觉理解与结构解析能力。
![屏幕截图 2026 03 07 230726](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-230726.png)
### 编程与长任务执行
GPT-5.4 融合了 GPT-5.3-Codex 的编程能力，同时强化了长时间自主执行任务的能力。
在 SWE-Bench Pro 测试中，与 GPT-5.3-Codex 持平或更强，同时整体推理延迟更低。
![屏幕截图 2026 03 07 230749](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-230749.png)
它可以：
自己调用工具
多轮迭代优化
减少人工干预
这已经是半自动工程师级别的能力。
### 工具调用与多步任务
在 Toolathlon 测试中，它用更少轮次完成复杂真实任务，比如：
读取邮件
处理附件
评分
记录到表格
准确率更高，执行更稳定。
![屏幕截图 2026 03 07 230813](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-230813.png)
### 联网搜索能力
在 BrowseComp 测试中，GPT-5.4 相比 5.2 提升 17 个百分点。
GPT-5.4 Pro 更是达到 89.3%。
这意味着它在海量信息检索、多轮搜索整合方面的能力显著增强。
![BrowseComp](https://www.freedidi.com/wp-content/uploads/2026/03/BrowseComp.png)
## 可控性：真正的“Thinking”升级
GPT-5.4 Thinking 在处理复杂任务时会先给出“前言”说明思路，并支持在生成过程中实时追加指令。
这对高阶用户来说意义巨大。
### 智能体工具调用
GPT‑5.4 同样优化了**工具调用**能力，使其在推理过程中能更准确、更高效地判断调用工具的时机与方式，这在 API 环境下尤为突出。相比 GPT‑5.2，它在 Toolathlon 基准测试中能以更少的轮次达到更高的准确率。该测试旨在评估 AI 智能体利用真实世界工具和 API 完成多步任务的能力 — 例如，智能体需要读取邮件、提取作业附件、上传并评分，最后将结果记录到电子表格中。
![屏幕截图 2026 03 07 230837](https://www.freedidi.com/wp-content/uploads/2026/03/屏幕截图-2026-03-07-230837.png)
你可以在任务进行中微调方向，而不需要推倒重来。
在长流程任务中，它对上下文记忆更加稳定，推理更深入。
这才是 Agent 真正可控、可用、可扩展的关键。
## 最后总结：打工人真的悬了？
实测之后，我只有一个感受：
这不是一次小升级，而是一次形态级进化。
GPT-5.4 让“原生操控电脑”从概念走向现实。
它不再只是一个聊天模型，而是一个可以真正执行工作的智能体核心。
当它与 OpenClaw 这样的 Agent 框架结合，2026 年的工作方式，很可能会被重新定义。
### 打赏支持×感谢您的支持
支付宝微信支付BitcoinUSDT
Tags:[GPT-5.4](https://www.freedidi.com/tag/gpt-5-4)
- [**Next**](https://www.freedidi.com/23203.html)[OpenClaw 新手必备！安装实用Skills，模型选择，浏览器自动化等！](https://www.freedidi.com/23203.html)
- [**Previous**](https://www.freedidi.com/23120.html)[GPT-5.3 Instant 正式发布：速度更快、推理更强，免费开放使用（实测体验）](https://www.freedidi.com/23120.html)
## [OpenAI 正式发布 GPT-5.2！实测 效果惊人，附最新免费使用教程！切勿错过 | 零度解说](https://www.freedidi.com/22048.html)
- 2025年12月12日
## [修改手机GPS虚拟定位！爱思助手是个不错的选择](https://www.freedidi.com/4765.html)
- 2022年5月3日
## [紧急通告：VMware虚拟机软件发现严重漏洞，切勿疏忽，务必立即升级！](https://www.freedidi.com/11763.html)
- 2024年3月8日
## [图片、视频画质增强器，效果不错！](https://www.freedidi.com/11436.html)
- 2024年1月22日
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
[注册永久免费域名，托管到 CloudFlare ，自动免费续订、提醒！](https://www.freedidi.com/20033.html)
2025年7月7日
[AI](https://www.freedidi.com/category/ai)/[gemini](https://www.freedidi.com/category/gemini)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Google 放大招！正式发布 Nano-Banana 图片AI神器，角色一致性堪称完美！人人都能免费用 | 零度解说](https://www.freedidi.com/20482.html)
2025年8月29日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Microsoft Defender（微软安全卫士）永久免费且好用！](https://www.freedidi.com/20918.html)
2025年10月9日
![Cloudflare-workers-blog 搭建一个免费的动态博客！有前端和后台](https://www.freedidi.com/wp-content/themes/gridzone/img/thumb-small.png)
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Cloudflare-workers-blog 搭建一个免费的动态博客！有前端和后台](https://www.freedidi.com/21363.html)
2025年10月31日
[Windows 10](https://www.freedidi.com/category/windows-10)/[Windows 11](https://www.freedidi.com/category/windows-11)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Windows 11 电脑越用越卡？只需这几步设置，瞬间起飞！ 跟 Win 10一样流畅运行！ | 零度解说](https://www.freedidi.com/21934.html)
2025年12月2日
- pubo64178418 says:[价格呢？是多少？](https://www.freedidi.com/15144.html#comment-1305)
- huige2012 says:[我去组装一台台式电脑吧，可以帮我写一份配…](https://www.freedidi.com/?p=21947#comment-1304)
- admin says:[如果你的账号之前开通过付费业务，那么你需…](https://www.freedidi.com/?p=22004#comment-1303)
- admin says:[笔记本 RTX4060显卡的显存只有8G…](https://www.freedidi.com/?p=21947#comment-1302)
- huige2012 says:[有远程操作指导的嘛？](https://www.freedidi.com/?p=21947#comment-1301)
- [18](https://www.freedidi.com/tag/18)[2021](https://www.freedidi.com/tag/2021)[ChatGPT](https://www.freedidi.com/tag/chatgpt)[chrome](https://www.freedidi.com/tag/chrome)[edge](https://www.freedidi.com/tag/edge)[edge浏览器](https://www.freedidi.com/tag/edge%e6%b5%8f%e8%a7%88%e5%99%a8)[ExpressVPN](https://www.freedidi.com/tag/expressvpn)[google voice](https://www.freedidi.com/tag/google-voice)[Hermes Agent](https://www.freedidi.com/tag/hermes-agent)[mac os](https://www.freedidi.com/tag/mac-os)[openclaw](https://www.freedidi.com/tag/openclaw)[SS](https://www.freedidi.com/tag/ss)[ssr](https://www.freedidi.com/tag/ssr)[VIP](https://www.freedidi.com/tag/vip)[vpn](https://www.freedidi.com/tag/vpn)[VPN推荐](https://www.freedidi.com/tag/vpn%e6%8e%a8%e8%8d%90)[win10优化](https://www.freedidi.com/tag/win10%e4%bc%98%e5%8c%96)[windows 10](https://www.freedidi.com/tag/windows-10)[Windows 11](https://www.freedidi.com/tag/windows-11)[会员](https://www.freedidi.com/tag/%e4%bc%9a%e5%91%98)[免费VPN](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9vpn)[免费软件](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9%e8%bd%af%e4%bb%b6)[双系统](https://www.freedidi.com/tag/%e5%8f%8c%e7%b3%bb%e7%bb%9f)[国外VPS推荐](https://www.freedidi.com/tag/%e5%9b%bd%e5%a4%96vps%e6%8e%a8%e8%8d%90)[好用的vpn](https://www.freedidi.com/tag/%e5%a5%bd%e7%94%a8%e7%9a%84vpn)[安卓子系统](https://www.freedidi.com/tag/%e5%ae%89%e5%8d%93%e5%ad%90%e7%b3%bb%e7%bb%9f)[挖矿](https://www.freedidi.com/tag/%e6%8c%96%e7%9f%bf)[排名前五的VPN](https://www.freedidi.com/tag/%e6%8e%92%e5%90%8d%e5%89%8d%e4%ba%94%e7%9a%84vpn)[最好的vpn](https://www.freedidi.com/tag/%e6%9c%80%e5%a5%bd%e7%9a%84vpn)[比特币](https://www.freedidi.com/tag/%e6%af%94%e7%89%b9%e5%b8%81)[油猴插件](https://www.freedidi.com/tag/%e6%b2%b9%e7%8c%b4%e6%8f%92%e4%bb%b6)[浏览器](https://www.freedidi.com/tag/%e6%b5%8f%e8%a7%88%e5%99%a8)[电脑优化](https://www.freedidi.com/tag/%e7%94%b5%e8%84%91%e4%bc%98%e5%8c%96)[神器](https://www.freedidi.com/tag/%e7%a5%9e%e5%99%a8)[科学上网](https://www.freedidi.com/tag/%e7%a7%91%e5%ad%a6%e4%b8%8a%e7%bd%91)[网站推荐](https://www.freedidi.com/tag/%e7%bd%91%e7%ab%99%e6%8e%a8%e8%8d%90)[翻墙](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99)[翻墙vpn](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vpn)[翻墙VPS](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vps)[老司机](https://www.freedidi.com/tag/%e8%80%81%e5%8f%b8%e6%9c%ba)[谷歌浏览器](https://www.freedidi.com/tag/%e8%b0%b7%e6%ad%8c%e6%b5%8f%e8%a7%88%e5%99%a8)[软件推荐](https://www.freedidi.com/tag/%e8%bd%af%e4%bb%b6%e6%8e%a8%e8%8d%90)[零度解密](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e5%af%86)[零度解说](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e8%af%b4)[黑苹果安装教程](https://www.freedidi.com/tag/%e9%bb%91%e8%8b%b9%e6%9e%9c%e5%ae%89%e8%a3%85%e6%95%99%e7%a8%8b)
### 归档
### 分类
