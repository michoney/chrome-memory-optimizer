如果你在找一种真正“长期可用”的免费节点方案，那么2026年，这套基于 Cloudflare 的搭建方式，可能是目前最值得尝试的一种选择。
它最大的特点只有三个：免费、稳定、速度极快！不需要服务器、不需要额外成本，甚至连域名都可以免费获取；整个搭建过程从零开始，大约10分钟就能完成。同时，由于依托 Cloudflare 本身的网络基础，这套方案在稳定性和可用性方面，也远远优于传统的临时节点或不稳定方案。
![2026 04 02 14 51 43.00 00 14 00.Still014 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-02-14-51-43.00_00_14_00.Still014-scaled.webp)
相比过去那些复杂、容易失效、需要频繁维护的方式，这种方案更像是一种“轻量级长期解决方案”：一次搭建，持续可用，几乎不需要额外折腾，非常适合个人用户或轻度使用场景。
![2026 04 02 14 51 43.00 13 49 19.Still015 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-02-14-51-43.00_13_49_19.Still015-scaled.webp)
接下来，我会从准备工作开始，一步一步带你完整搭建这套 Cloudflare 免费节点方案，并把过程中所有关键细节和容易踩坑的地方，全部讲清楚。
# **部署步骤：**
### **第一步：**
注册一个永久免费的域名，下方我提供了2种免费域名的注册链接，第二种我们之前已经介绍过了，所以这次我们就用第一种方式：
第1种：【[**点击前往**](https://www.dnshe.com)】
第2种：【[**点击前往**](https://digitalplat.org/)】
注册登入以后，即可注册5个永久免费的域名，根域名选择ccwu.cc 或者 us.ci 都是完全免费的！
![屏幕截图 2026 04 02 213015](https://www.freedidi.com/wp-content/uploads/2026/04/屏幕截图-2026-04-02-213015.webp)
![2026 04 02 14 51 43.00 03 03 14.Still016 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-02-14-51-43.00_03_03_14.Still016-scaled.webp)
### **第二步**
注册并登入 Cloudflare 平台，然后将上方注册的免费域名托管进去
【[**点击注册**](https://www.cloudflare.com/)】
![2026 04 02 14 51 43.00 05 54 06.Still018 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-02-14-51-43.00_05_54_06.Still018-scaled.webp)
### **第三步：**
创建KV 空间，在Cloudflare后台找到：存储和数据库 – Worker KV，来创建一个KV空间以备后面对接。
![20260402 1775126065](https://www.freedidi.com/wp-content/uploads/2026/04/20260402_1775126065.webp)
### **第四步：**
创建Pages,在Cloudflare后台找到 Workers 和 Pages
![2026 04 02 14 51 43.00 06 38 20.Still020 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-02-14-51-43.00_06_38_20.Still020-scaled.webp)
进入以后，选择下方第二个选项，就是创建Pages，如下图所示：
![20260402 1775126236](https://www.freedidi.com/wp-content/uploads/2026/04/20260402_1775126236.webp)
接着需要上传由[CMliu](https://github.com/cmliu/edgetunnel)开源的程序，他的源码是明文的，你可以自己去获取查看，目前是开源到GitHub上。或者直接下载Pages的专属安装包！
**【重要提醒！！】：**大陆用户切勿使用！否则有法律风险，请遵守当地法律法规，限海外用户使用！
【[**点击下载**](https://github.com/cmliu/edgetunnel/archive/refs/heads/main.zip)】
下载以后直接将附件上传到Pages，进行步骤即可
![20260402 1775126576](https://www.freedidi.com/wp-content/uploads/2026/04/20260402_1775126576.webp)
- 部署完成后点击`继续处理站点`后，选择`设置`>`环境变量`>**制作**为生产环境定义变量 >`添加变量`。 变量名称填写**ADMIN**，值则为你的管理员密码，后点击`保存`即可。
- 返回`部署`选项卡，在右下角点击`创建新部署`后，重新上传[main.zip](https://github.com/cmliu/edgetunnel/archive/refs/heads/main.zip)文件后点击`保存并部署`即可。
绑定 KV 命名空间：
- 在`设置`选项卡中选择`绑定`>`+ 添加`>`KV 命名空间`，然后选择一个已有的命名空间或创建一个新的命名空间进行绑定。
- `变量名称`填写**KV**，然后点击`保存`后重试部署即可。
给 Pages绑定 CNAME自定义域：
- 在 Pages控制台的`自定义域`选项卡，下方点击`设置自定义域`。
- 填入你的自定义次级域名，注意不要使用你的根域名，例如： 您分配到的域名是 lingdujieshuo.ccwu.cc，则添加自定义域填入 lingdujieshuo.ccwu.cc即可；
- 按照 CF 的要求将返回你的域名DNS服务商，添加 该自定义域`lizi`的 CNAME记录`edgetunnel.pages.dev`后，点击`激活域`即可。
访问后台：
![2026 04 02 14 51 43.00 10 56 09.Still021 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-02-14-51-43.00_10_56_09.Still021-scaled.webp)
- 访问`https://lingdujieshuo.ccwu.cc/admin`输入管理员密码即可登录后台。
接着把上方的节点链接格式或者自适应订阅地址，导入到你的代理软件里，他支持 VLESS、Trojan 等主流协议，深度集成加密传输。
### ✨ 核心特性
- 🛡️**协议支持**：支持 VLESS、Trojan 等主流协议，深度集成加密传输。
- 📊**管理面板**：内置可视化后台，支持实时配置修改、日志查看及流量统计。
- 🛠️**部署灵活**：完整适配 CF Workers 及 CF Pages (GitHub / 上传)。
- 🔄**订阅系统**：内置自动订阅生成及混淆转换，适配主流客户端（Clash, Sing-box, Surge 等）。
- ⚡**性能加速**：支持自定义 ProxyIP、SOCKS5/HTTP 链式代理及优选 API，优化网络延迟。
- 🌐**多台适配**：完美适配 Windows, Android, iOS, MacOS 及各种软路由固件。
比如我们可以使用常见的[V2Ray](https://github.com/2dust/v2rayN)客户来进行导入代理节点，就可以愉快的使用Cloudflare永久免费的VPN节点
![20260402 1775127156 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/20260402_1775127156-scaled.webp)
V2Ray 开源下载：【[**点击前往**](https://github.com/2dust/v2rayN)】
当然如果你需要自定义更多的选项，比如优选订阅地址，指定ProxyIP订阅，那么可以点击顶部的：我是高手！我就是要折腾！
**优选订阅地址：**
```
Cm.Soso.Edu.Kg

Sub.Cmliussss.Net

Owo.O00o.Ooo
```
**PROXYIP 订阅:**
```
ProxyIP.US.CMLiussss.Net

ProxyIP.SG.CMLiussss.Net

ProxyIP.JP.CMLiussss.Net
```
你可以玩出更多花样更多高级功能
![2026 04 02 14 51 43.00 00 03 18.Still023 scaled](https://www.freedidi.com/wp-content/uploads/2026/04/2026-04-02-14-51-43.00_00_03_18.Still023-scaled.webp)
### 感谢您的支持
- [**Next**](https://www.freedidi.com/23643.html)[谷歌正式发布 Gemma 4 ：最强开源本地大模型，支持多模态+离线运行，附部署教程！](https://www.freedidi.com/23643.html)
- [**Previous**](https://www.freedidi.com/23603.html)[OpenClaw 装进手机！本地运行 AI + 远程操控，一部老旧安卓机全搞定！](https://www.freedidi.com/23603.html)
## [IDM不显示悬浮条的彻底解决办法](https://www.freedidi.com/691.html)
- 2020年10月2日
## [Rufus 最好的U盘工具](https://www.freedidi.com/1212.html)
- 2021年2月1日
## [免费送 15000 枚狗狗币！第二波， 先到先得，人人都能领取，切勿错过！！OKX 搞活动狂送 Dogecoin | 零度解说](https://www.freedidi.com/17458.html)
- 2024年12月7日
## [在Docker下一键安装部署免费开源的问答社区！](https://www.freedidi.com/10294.html)
- 2023年8月29日
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
[Arch Linux：极简、极速、极致自由的系统体验](https://www.freedidi.com/20067.html)
2025年7月9日
[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[超爽的！电视机上安装这款播放器，简直无敌了！手机也适用，完全免费开源！ | 零度解说](https://www.freedidi.com/20500.html)
2025年8月31日
[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)/[限免](https://www.freedidi.com/category/%e9%99%90%e5%85%8d)
[赶紧下载！5款强力杀毒软件，限时免费！附详细安装与激活教程 （2025） | 零度解说](https://www.freedidi.com/20932.html)
2025年10月9日
![Sink 一款简单/快速/安全的链接缩短服务，带有分析功能，100% 基于 Cloudflare 运行!](https://www.freedidi.com/wp-content/themes/gridzone/img/thumb-small.png)
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Sink 一款简单/快速/安全的链接缩短服务，带有分析功能，100% 基于 Cloudflare 运行!](https://www.freedidi.com/21378.html)
2025年10月31日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[免费获取1年的Google Gemini  AI Pro 学生套餐！学生认证就这么简单！保姆级的教程](https://www.freedidi.com/21943.html)
2025年12月3日
- pubo64178418 says:[价格呢？是多少？](https://www.freedidi.com/15144.html#comment-1305)
- huige2012 says:[我去组装一台台式电脑吧，可以帮我写一份配…](https://www.freedidi.com/?p=21947#comment-1304)
- admin says:[如果你的账号之前开通过付费业务，那么你需…](https://www.freedidi.com/?p=22004#comment-1303)
- admin says:[笔记本 RTX4060显卡的显存只有8G…](https://www.freedidi.com/?p=21947#comment-1302)
- huige2012 says:[有远程操作指导的嘛？](https://www.freedidi.com/?p=21947#comment-1301)
- [18](https://www.freedidi.com/tag/18)[2021](https://www.freedidi.com/tag/2021)[ChatGPT](https://www.freedidi.com/tag/chatgpt)[chrome](https://www.freedidi.com/tag/chrome)[edge](https://www.freedidi.com/tag/edge)[edge浏览器](https://www.freedidi.com/tag/edge%e6%b5%8f%e8%a7%88%e5%99%a8)[ExpressVPN](https://www.freedidi.com/tag/expressvpn)[google voice](https://www.freedidi.com/tag/google-voice)[Hermes Agent](https://www.freedidi.com/tag/hermes-agent)[mac os](https://www.freedidi.com/tag/mac-os)[openclaw](https://www.freedidi.com/tag/openclaw)[SS](https://www.freedidi.com/tag/ss)[ssr](https://www.freedidi.com/tag/ssr)[VIP](https://www.freedidi.com/tag/vip)[vpn](https://www.freedidi.com/tag/vpn)[VPN推荐](https://www.freedidi.com/tag/vpn%e6%8e%a8%e8%8d%90)[win10优化](https://www.freedidi.com/tag/win10%e4%bc%98%e5%8c%96)[windows 10](https://www.freedidi.com/tag/windows-10)[Windows 11](https://www.freedidi.com/tag/windows-11)[会员](https://www.freedidi.com/tag/%e4%bc%9a%e5%91%98)[免费VPN](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9vpn)[免费软件](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9%e8%bd%af%e4%bb%b6)[双系统](https://www.freedidi.com/tag/%e5%8f%8c%e7%b3%bb%e7%bb%9f)[国外VPS推荐](https://www.freedidi.com/tag/%e5%9b%bd%e5%a4%96vps%e6%8e%a8%e8%8d%90)[好用的vpn](https://www.freedidi.com/tag/%e5%a5%bd%e7%94%a8%e7%9a%84vpn)[安卓子系统](https://www.freedidi.com/tag/%e5%ae%89%e5%8d%93%e5%ad%90%e7%b3%bb%e7%bb%9f)[挖矿](https://www.freedidi.com/tag/%e6%8c%96%e7%9f%bf)[排名前五的VPN](https://www.freedidi.com/tag/%e6%8e%92%e5%90%8d%e5%89%8d%e4%ba%94%e7%9a%84vpn)[最好的vpn](https://www.freedidi.com/tag/%e6%9c%80%e5%a5%bd%e7%9a%84vpn)[比特币](https://www.freedidi.com/tag/%e6%af%94%e7%89%b9%e5%b8%81)[油猴插件](https://www.freedidi.com/tag/%e6%b2%b9%e7%8c%b4%e6%8f%92%e4%bb%b6)[浏览器](https://www.freedidi.com/tag/%e6%b5%8f%e8%a7%88%e5%99%a8)[电脑优化](https://www.freedidi.com/tag/%e7%94%b5%e8%84%91%e4%bc%98%e5%8c%96)[神器](https://www.freedidi.com/tag/%e7%a5%9e%e5%99%a8)[科学上网](https://www.freedidi.com/tag/%e7%a7%91%e5%ad%a6%e4%b8%8a%e7%bd%91)[网站推荐](https://www.freedidi.com/tag/%e7%bd%91%e7%ab%99%e6%8e%a8%e8%8d%90)[翻墙](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99)[翻墙vpn](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vpn)[翻墙VPS](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vps)[老司机](https://www.freedidi.com/tag/%e8%80%81%e5%8f%b8%e6%9c%ba)[谷歌浏览器](https://www.freedidi.com/tag/%e8%b0%b7%e6%ad%8c%e6%b5%8f%e8%a7%88%e5%99%a8)[软件推荐](https://www.freedidi.com/tag/%e8%bd%af%e4%bb%b6%e6%8e%a8%e8%8d%90)[零度解密](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e5%af%86)[零度解说](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e8%af%b4)[黑苹果安装教程](https://www.freedidi.com/tag/%e9%bb%91%e8%8b%b9%e6%9e%9c%e5%ae%89%e8%a3%85%e6%95%99%e7%a8%8b)
### 归档
### 分类
