在过去的1个月里，越来越多的人开始在Mac上运行本地AI大模型。比如使用Ollama来运行各种模型，再通过OpenCat或Ollama桌面客户端来调用。但很多人都有一个非常痛苦的体验：**速度****慢、****推理****卡****顿、****token****每秒****只有****个****位**数**。**
![2026 03 14 22 21 35.00 00 12 17.Still001 scaled](https://www.freedidi.com/wp-content/uploads/2026/03/2026-03-14-22-21-35.00_00_12_17.Still001-scaled.webp)
尤其是在MacMini或16GB内存设备上，这个问题更明显。今天给大家介绍一个Mac本地跑模型的加速神器 ——OMLX。
它可以让本地模型**推理****速度****提升****10****倍****以上**，即使是**丐****版****Mac****Mini**也能轻松运行大模型。
下面我带大家完整实测 +部署教程
## **一、为什么 Mac 本地模型这么慢？**
很多人在Mac上运行本地模型时，一般是这样的架构：
但默认情况下：
推理效率不高
KVCache利用率低
CPU/GPU调度不充分
所以经常会出现这种情况：
回复**一个****字****一个****字****往外****蹦**
每秒**3~****5****token**
一个简单问题**几****十秒****甚至****几****分钟**
这对于日常使用来说体验非常差。
## **二、OMLX：Mac 本地模型加速神器**
![https://omlx.ai/images/omlx_dashboard_light.png](https://www.freedidi.com/wp-content/uploads/2026/03/20260315_1773574056.webp)
![https://omlx.ai/images/omlx_dashboard_dark.png](https://www.freedidi.com/wp-content/uploads/2026/03/20260315_1773574058.webp)
优化本地模型推理
提升token生成速度
管理模型缓存
提供OpenAIAPI接口
支持压力测试
简单理解：
**OMLX =****Mac****本地****AI****模型****加速****服务****器**
部署后，本地模型速度通常可以**提升****5~****10****倍****以上**。
## **三、Mac Mini 推荐模型**
如果你的设备是**16GB****Mac****Mini**，推荐使用：
**Qwen3.5-9B ：[**[**点击前往**](https://ollama.com/library/qwen3.5:9b)**]  进行下载**
原因：
9B模型在**性能****和****质量****之间****非常****平衡**。
## 四、安装 Ollama
![https://kodekloud.com/kk-media/image/upload/v1752883703/notes-assets/images/Running-Local-LLMs-With-Ollama-Installing-Ollama/ollama-download-page-macos-linux-windows.jpg](https://www.freedidi.com/wp-content/uploads/2026/03/20260315_1773574059.webp)
首先安装**Ollama**。
步骤：
1️⃣打开官网下载安装
【[**点击前往**](https://ollama.com)】
2️⃣安装完成后打开终端
下载**Qwen3.5****9B****模型**
```
ollama run qwen2.5:9b
```
下载大小：约 6.6GB
下载完成后，就可以测试模型：
## **五、速度实测（未优化）**
我们先测试一个简单的数学推理题：
```
2,6,12,20,30,(?)
```
规律是：
第六个数：
但在**Ollama****默认****推理****下：**
结果：
速度非常慢。
## 六、安装 OMLX
在安装之前请确保你当前的mac上已经安装了Openclaw，没有安装的话可以通过下面的一键安装命令：
```
curl -fsSL https://openclaw.ai/install.sh | bash
```
来进行安装、升级到最新版本！
![https://docs.github.com/assets/cb-198931/images/help/stars/lists-overview-on-stars-page.png](https://www.freedidi.com/wp-content/uploads/2026/03/20260315_1773574059.webp)
![https://help.apple.com/assets/68FBBA193607B5D7D10E93FA/68FBBA1F5B40BB61910BDFBB/en_US/a3e401e82f9552fd51a8b7fc868df22c.png](https://www.freedidi.com/wp-content/uploads/2026/03/20260315_1773574061.webp)
目前Github已经有**4000+****Star**。
下载步骤：
1️⃣打开项目Release页面
## 下载最新版本【[**点击前往**](https://github.com/jundot/omlx)】或 【[网盘打包下载](https://pan.quark.cn/s/b9503bb71e13)】
注意选择正确版本：
下载后直接拖入Applications安装。
### 七、启动 OMLX 服务器
打开OMLX后：
配置如下
**默认****端****口：**8000
**API****Key：**随便设置，例如：12345678
点击：
当看到**绿色****状态**就说明启动成功。
进入后台：
### 八、配置模型缓存（非常关键）
在设置里建议这样配置：
### 内存限制
如果是**16GB****Mac**
### 热缓存
### 冷缓存（强烈建议）
例如：
作用：
保存KVcache
模型下次启动更快
# 九、下载模型
OMLX不识别Ollama模型格式。
所以需要**重新****下载****模型**。
在后台：
搜索：
直接下载即可。
![20260315 1773573960](https://www.freedidi.com/wp-content/uploads/2026/03/20260315_1773573960.webp)
# 十、对接OpenCat
接下来把OMLX接入**OpenCat**。
终端运行：
```
opencat config
```
配置：
**Provider**
**API****地址**
**API****Key**
留空即可。
然后填写模型ID：
配置完成后即可。
# 十一、速度再次实测
同样的问题：
```
2,6,12,20,30,(?)
```
结果：
**速度****提升****接近****10****倍！**
几乎可以做到**秒****级****响应**。
# 十二、OMLX的高级功能
OMLX还有很多强大功能：
### 1️⃣性能矩阵测试
可以测试：
单线程
多线程
并发压力
评估：
### 2️⃣OpenAIAPI兼容
支持：
OpenAIAPI
Cloud模型
自定义模型
可以直接当：
### 3️⃣KVCache持久化
大幅提升：
模型启动速度
上下文推理效率
如果你想在**Mac****上****本地****跑****AI****大****模型**，那么这套组合非常推荐：
优势：
本地运行
不消耗token
推理速度大幅提升
MacMini也能轻松运行
尤其是对于喜欢折腾**本地****AI +****自动****化****工具**的朋友来说，这套方案真的非常香。
### 感谢您的支持
- [**Next**](https://www.freedidi.com/23445.html)[OpenClaw 本地模型最佳方案：模型推荐 + vLLM 部署优化完整教程！](https://www.freedidi.com/23445.html)
- [**Previous**](https://www.freedidi.com/23243.html)[OpenClaw 免费接入 QQ、微信、Telegram、飞书！无需 API 密钥调用 GPT-5.4](https://www.freedidi.com/23243.html)
## [永久免费的手机空间，存储大小没有限制，再也不用担心手机里的相册不够用了！](https://www.freedidi.com/287.html)
- 2020年5月15日
## [甲骨文云被封了！ 该怎么办？ 新开 ARM 云服务器、搭建网站、还是用保活脚本？详细解决方法都在这里了！！ | 零度解说](https://www.freedidi.com/10176.html)
- 2023年8月15日
## [最好的免费VPN | 全球排名前五 | 这5款免费VPN亲测速度安全性都非常的棒！](https://www.freedidi.com/150.html)
- 2020年4月18日
## [虚拟机里安装 Fedora kde plasma 系统无法联网? 附上解决方法](https://www.freedidi.com/19996.html)
- 2025年7月5日
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
[OpenAI](https://www.freedidi.com/category/openai)/[Sora](https://www.freedidi.com/category/sora)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[重磅！OpenAI 正式发布 Sora 2！免费无限玩，邀请码、提示词全公开！AI视频生成太强了！ | 零度解说](https://www.freedidi.com/20896.html)
2025年10月5日
[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[Cloudflare Workers 免费搭建精美的个人导航站！](https://www.freedidi.com/21347.html)
2025年10月31日
[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)/[限免](https://www.freedidi.com/category/%e9%99%90%e5%85%8d)
[赶紧下载！5款 “限时免费” 软件！得到就是赚到，立马帮你省下数百刀！ | 零度解说](https://www.freedidi.com/21895.html)
2025年11月29日
[AI](https://www.freedidi.com/category/ai)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[LTX-2：8GB 显卡也能跑的“全能型” AI音视频生成模型，老司机秒懂！](https://www.freedidi.com/22475.html)
2026年1月14日
[AI](https://www.freedidi.com/category/ai)/[Claude](https://www.freedidi.com/category/claude)/[OpenAI](https://www.freedidi.com/category/openai)/[Qwen](https://www.freedidi.com/category/qwen)/[Youtube视频](https://www.freedidi.com/category/youtube%e8%a7%86%e9%a2%91)/[免费资源](https://www.freedidi.com/category/%e5%85%8d%e8%b4%b9%e8%b5%84%e6%ba%90)
[谁才是编程王者？ChatGPT5.5、Claude 4.7、Deepseek V4、Qwen 3.6 实测见真章！](https://www.freedidi.com/23979.html)
2026年4月27日
- pubo64178418 says:[价格呢？是多少？](https://www.freedidi.com/15144.html#comment-1305)
- huige2012 says:[我去组装一台台式电脑吧，可以帮我写一份配…](https://www.freedidi.com/?p=21947#comment-1304)
- admin says:[如果你的账号之前开通过付费业务，那么你需…](https://www.freedidi.com/?p=22004#comment-1303)
- admin says:[笔记本 RTX4060显卡的显存只有8G…](https://www.freedidi.com/?p=21947#comment-1302)
- huige2012 says:[有远程操作指导的嘛？](https://www.freedidi.com/?p=21947#comment-1301)
- [18](https://www.freedidi.com/tag/18)[2021](https://www.freedidi.com/tag/2021)[ChatGPT](https://www.freedidi.com/tag/chatgpt)[chrome](https://www.freedidi.com/tag/chrome)[edge](https://www.freedidi.com/tag/edge)[edge浏览器](https://www.freedidi.com/tag/edge%e6%b5%8f%e8%a7%88%e5%99%a8)[ExpressVPN](https://www.freedidi.com/tag/expressvpn)[google voice](https://www.freedidi.com/tag/google-voice)[Hermes Agent](https://www.freedidi.com/tag/hermes-agent)[mac os](https://www.freedidi.com/tag/mac-os)[openclaw](https://www.freedidi.com/tag/openclaw)[SS](https://www.freedidi.com/tag/ss)[ssr](https://www.freedidi.com/tag/ssr)[VIP](https://www.freedidi.com/tag/vip)[vpn](https://www.freedidi.com/tag/vpn)[VPN推荐](https://www.freedidi.com/tag/vpn%e6%8e%a8%e8%8d%90)[win10优化](https://www.freedidi.com/tag/win10%e4%bc%98%e5%8c%96)[windows 10](https://www.freedidi.com/tag/windows-10)[Windows 11](https://www.freedidi.com/tag/windows-11)[会员](https://www.freedidi.com/tag/%e4%bc%9a%e5%91%98)[免费VPN](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9vpn)[免费软件](https://www.freedidi.com/tag/%e5%85%8d%e8%b4%b9%e8%bd%af%e4%bb%b6)[双系统](https://www.freedidi.com/tag/%e5%8f%8c%e7%b3%bb%e7%bb%9f)[国外VPS推荐](https://www.freedidi.com/tag/%e5%9b%bd%e5%a4%96vps%e6%8e%a8%e8%8d%90)[好用的vpn](https://www.freedidi.com/tag/%e5%a5%bd%e7%94%a8%e7%9a%84vpn)[安卓子系统](https://www.freedidi.com/tag/%e5%ae%89%e5%8d%93%e5%ad%90%e7%b3%bb%e7%bb%9f)[挖矿](https://www.freedidi.com/tag/%e6%8c%96%e7%9f%bf)[排名前五的VPN](https://www.freedidi.com/tag/%e6%8e%92%e5%90%8d%e5%89%8d%e4%ba%94%e7%9a%84vpn)[最好的vpn](https://www.freedidi.com/tag/%e6%9c%80%e5%a5%bd%e7%9a%84vpn)[比特币](https://www.freedidi.com/tag/%e6%af%94%e7%89%b9%e5%b8%81)[油猴插件](https://www.freedidi.com/tag/%e6%b2%b9%e7%8c%b4%e6%8f%92%e4%bb%b6)[浏览器](https://www.freedidi.com/tag/%e6%b5%8f%e8%a7%88%e5%99%a8)[电脑优化](https://www.freedidi.com/tag/%e7%94%b5%e8%84%91%e4%bc%98%e5%8c%96)[神器](https://www.freedidi.com/tag/%e7%a5%9e%e5%99%a8)[科学上网](https://www.freedidi.com/tag/%e7%a7%91%e5%ad%a6%e4%b8%8a%e7%bd%91)[网站推荐](https://www.freedidi.com/tag/%e7%bd%91%e7%ab%99%e6%8e%a8%e8%8d%90)[翻墙](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99)[翻墙vpn](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vpn)[翻墙VPS](https://www.freedidi.com/tag/%e7%bf%bb%e5%a2%99vps)[老司机](https://www.freedidi.com/tag/%e8%80%81%e5%8f%b8%e6%9c%ba)[谷歌浏览器](https://www.freedidi.com/tag/%e8%b0%b7%e6%ad%8c%e6%b5%8f%e8%a7%88%e5%99%a8)[软件推荐](https://www.freedidi.com/tag/%e8%bd%af%e4%bb%b6%e6%8e%a8%e8%8d%90)[零度解密](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e5%af%86)[零度解说](https://www.freedidi.com/tag/%e9%9b%b6%e5%ba%a6%e8%a7%a3%e8%af%b4)[黑苹果安装教程](https://www.freedidi.com/tag/%e9%bb%91%e8%8b%b9%e6%9e%9c%e5%ae%89%e8%a3%85%e6%95%99%e7%a8%8b)
### 归档
### 分类
