![未标题 2](https://www.freedidi.com/wp-content/uploads/2026/04/未标题-2.webp)
![20260406 1775473370 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/20260406_1775473370-scaled.webp)
这期教程，我将带你从零开始，分别在 Android 和 iPhone 手机上跑通最新的 Gemma 4 模型。在开始动手之前，请确保你已经在本页下方找到了我们所需的全部下载资料和链接。
## 第一部分：Android 安卓端部署
我们先拿安卓手机来做测试。由于我的测试机配置比较旧，正好可以验证一下低配手机的运行效果。
### 1. 下载与安装环境
在下方资料区获取安装包，你可以选择直接从谷歌应用商店（Google Play）下载，或者直接下载 APK 安装包。
### **（1）、Google应用商店下载：【**[**点击前往**](https://play.google.com/store/apps/details?id=com.ishanvohra2.localai)**】**
### **（2）、下载安卓APK安装包：【**[**点击下载**](https://pan.quark.cn/s/16792f0e694e)**】或【**[**备用下载**](https://pan.cloudeop.com/s/AFE1C96688C47D36)**】**
![未标题 3](https://www.freedidi.com/wp-content/uploads/2026/04/未标题-3.webp)
打开应用并完成安装。
首次进入点击**Get Started**，并允许发送通知。
### 2. 性能模式与模型下载
进入应用后，我们需要进行基础设置并下载对应的 AI 模型：
**选择运行模式：**顶部可以选择 AI 模型的运行模式（Fast 快速、平衡、高性能、自定义）。
**进入模型库：**点击左上方三个横杠菜单，进入**Model Hub**。
**下载 Gemma 4：**向下滑动找到**Gemma 4 ECB 量化版模型**。
注：系统会根据手机配置推荐合适的版本。由于我的手机配置不高，它推荐的是 1.2GB 大小的`Q2_K_S_L`量化版。如果你的安卓机配置较高，可以选择最高 2.3GB 的版本以获得更好的体验。
![2026 04 06 16 39 57.00 02 25 08.Still014 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-06-16-39-57.00_02_25_08.Still014-scaled.webp)
勾选推荐版本，拉到底部点击**Download**，耐心等待一分钟左右即可下载完成。
### 3. 载入与测试模型
返回首页，进入**Fast**选项卡并拉到底部，打开**自定义模式**。
**创建模型：**名称可以随便填。
**选择模型：**选中我们刚刚下载好的 Gemma 4 1.2G 模型。
**参数设置：*** 上下文长度：根据手机硬件配置自定义（配置低切勿拉太高）。
最高 Token 输出量：设置为**512**。
点击保存，自定义模型就配置完成了！
**实测表现：**我让它在本地完全离线的状态下帮我编写了一个贪吃蛇小游戏，生成速度非常快，日常对话也完全没有问题。
![2026 04 06 16 39 57.00 02 51 02.Still015 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-06-16-39-57.00_02_51_02.Still015-scaled.webp)
## 第二部分：iOS 苹果端部署
看完安卓，我们再来看看 iPhone 上的表现。
### 1. 下载 Locally AI
### 【[点击前往](https://apps.apple.com/us/app/locally-ai-local-ai-chat/id6741426692)】
通过下方链接前往 App Store 下载名为**Locally AI**的应用程序。这是一款完全免费、主打隐私与安全、支持加载本地离线模型的强大工具。
![屏幕截图 2026 04 06 211153](https://www.freedidi.com/wp-content/uploads/2026/04/屏幕截图-2026-04-06-211153.webp)
### 2. 下载 iOS 版 Gemma 4
打开应用，跳过欢迎页的默认模型推荐。
点击上方的**选择模型**，在列表中找到支持深入思考和多模态的最新的**Gemma 4**。
点击下载（文件大小约为**3.61GB**，版本为`E2B`量化版）。
![屏幕截图 2026 04 06 211237](https://www.freedidi.com/wp-content/uploads/2026/04/屏幕截图-2026-04-06-211237.webp)
## 极客硬核测试：Gemma 4 到底有多强？
模型下载好后，我针对它的多模态、逻辑推理和代码能力进行了深度测试。
### 测试一：多模态视觉识别（拍照识物）
我随手在桌面上扔了一些杂物，打开**深入思考模式**拍照发给它，看看它能识别出什么。
**我的提问：**你看到了什么？桌面上堆有哪些东西？**Gemma 4 回答：**> * ✅ 一部深色的智能手机
✅ 一个带花卉图案的偏紫色/粉色手机保护壳
✅ 一个亮蓝绿色的小瓶（护肤品/精油）
✅ 一个带标签的大罐子（益生菌）
✅ 一个黑色小电子配件（声卡录音设备）
![2026 04 06 16 39 57.00 04 10 21.Still016 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-06-16-39-57.00_04_10_21.Still016-scaled.webp)
**翻车环节：**唯独桌上的西瓜子它没认出来。我再次特写拍照问它“黑色点点是什么，总共有多少个？” 它推测是干燥的种子（算答对），但数量数成了 9 个（实际是 16 个）。吐槽：为了公平起见，我也问了 ChatGPT，虽然 ChatGPT 认出了西瓜子，但也数错了（数成了 17 个）。看来 AI 数数依然是个老大难问题！
### 测试二：逻辑推理（蒙提霍尔问题）
**题目：**三扇门（一车两羊），你选定一扇后，主持人打开一扇羊门。问：换门是否有利？**Gemma 4 回答：**这是一个经典的蒙提霍尔问题变种。答案是**换门更有利**。坚持原门只有 1/3 的概率，而换门可以抓住主持人排除错误选项带来的机会，将概率提升到 2/3。**结论：**逻辑非常清晰，完全正确！
### 测试三：前端代码编程
**要求：**编写一个 3D 鱼缸场景，水、水草和鱼要有真实感。**结果：**它不仅提供了 HTML，还一并写好了 CSS 样式和 JS 代码。将代码复制到电脑上运行后，视觉效果非常逼真。作为一个手机端本地运行的小模型，能达到这种渲染水准令人惊艳。
![2026 04 06 16 39 57.00 07 56 19.Still018 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-06-16-39-57.00_07_56_19.Still018-scaled.webp)
### 测试四：医疗物品识别安全机制
我拍了一盒“瑞巴派特片”给它。它准确识别出了药片名称，但立刻触发了安全机制，表示“由于涉及身体和健康产品，无法提供医疗建议，请务必咨询医生”。表现得非常严谨。
![屏幕截图 2026 04 06 211503](https://www.freedidi.com/wp-content/uploads/2026/04/屏幕截图-2026-04-06-211503.webp)
## 终极考验：断网飞行模式测试
为了验证它的纯离线真伪，我**断开了所有网络并开启了飞行模式**。
**写长篇小说：**让它写一篇 5000 字左右的恐怖小说。它在完全离线的状态下，使用繁体字分章输出，仅用时 1 分钟左右就完成了创作。
**微距视觉推理：**在离线状态下发给它一张包含大象和蚂蚁的画。它准确识别出了大象头部，并声明“由于细节非常小，对蚂蚁的识别是基于微小尺寸的推测”。离线多模态能力确实靠谱。
### 总结与资源获取
Gemma 4 模型在手机端的本地离线表现远远超出了我的预期，无论是生成速度、逻辑推理还是多模态视觉，都达到了相当高的可用级别。
### 感谢您的支持
- [**Next**](https://www.freedidi.com/23690.html)[最强编程AI来了！Qwen3.6-Plus 两天登顶，Agent能力拉满！普通人也能写软件](https://www.freedidi.com/23690.html)
- [**Previous**](https://www.freedidi.com/23643.html)[谷歌正式发布 Gemma 4 ：最强开源本地大模型，支持多模态+离线运行，附部署教程！](https://www.freedidi.com/23643.html)
## [史上最强大的视频播放器，全平台推荐：Windows、安卓、IOS、MacOS排名第一的播放器！| 零度解说](https://www.freedidi.com/1896.html)
- 2021年8月2日
## [免费创建自己的私人云盘！在家就可以搞定！安全又实用 | 零度解说](https://www.freedidi.com/2608.html)
- 2021年12月7日
## [最强 AI 翻译神器！免费开源，支持离线使用，实时对话、内置 OpenAI Whisper 顶级模型！ RTranslator | 零度解说](https://www.freedidi.com/19679.html)
- 2025年6月15日
## [7个鲜为人知，但非常有意思！而且超实用的网站！！2022 | 零度解说](https://www.freedidi.com/4383.html)
- 2022年3月11日
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
