今天我们来详细讲一下，如何将OpenClaw免费对接到QQ、Telegram、飞书，未来甚至还可以接入个人微信。通过这个方法，你可以让AI机器人直接在聊天软件里工作，实现自动回复、智能助手、自动处理信息等功能。
![20260313 1773393729 scaled](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773393729-scaled.webp)
更重要的是，这个方案可以免费调用OpenAI最新最强的GPT-5.4模型，而且完全不需要APIKey，对于很多想体验强大AI能力的朋友来说非常友好。
![20260313 1773393792](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773393792.webp)
**视频教程：**
## **第****一步：**
**安装****或者****升级****到****最新****版本****的****OpenClaw**
打开PowerShell终端。如果你是第一次安装OpenClaw，一定要先执行下面两个命令，用来设置PowerShell权限，否则在安装过程中可能会出现脚本自动闪退的问题。
```
Set-ExecutionPolicy RemoteSigned -Scope CurrentUser
Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass
```
执行完成之后，就可以运行安装或升级命令了。
**Windows****系统**，执行下面的命令：
```
powershell -c "irm https://openclaw.ai/install.ps1 | iex"
```
**Mac****或****Linux****系统**，则执行下面的命令：
```
curl -fsSL https://openclaw.ai/install.sh | bash
```
**重要提醒：****如果你是免费的ChatGPT账号，对接的模型请选择 GPT-5.2，否则会无法连接！**
安装完成之后，我们进入第二步。
## **第二****步****：**
下载并安装QQ客户端。如果你的电脑上还没有安装QQ，可以通过下面的官方地址下载：
QQ最新客户端：【[**点击下载**](https://im.qq.com/)】
安装并登录好QQ之后，我们进入第三步。
## **第****三步：**
**创建****QQ****机器****人**。打开下面这个链接进入创建页面：
【[**点击前往**](https://q.qq.com/qqbot/openclaw/login.html)】
登录你的QQ账号后，就可以按照页面提示创建一个QQ机器人。创建完成后，就可以将机器人与OpenClaw进行对接。
![20260313 1773394002 scaled](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394002-scaled.webp)
进入以后点击右上方的创建机器人，它就会自动给你分配对接参数和生成一键对接命令：
![20260313 1773394094](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394094.webp)
对接成功即可在QQ里和机器人对话并调用Openclaw来进行操控电脑
![20260313 1773394167](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394167.webp)
## **Telegram****对****接****方法：**
首先下载并安装Telegram，然后注册一个账号。
【[**点击下载**](https://web.telegram.org/)】
登录之后，在搜索栏中搜索Telegram官方机器人**@****BotFather**。
进入BotFather后，发送`/start`，然后使用`/newbot`创建一个新的机器人。按照提示设置机器人名称和用户名，创建完成后BotFather会给你一个**Bot****Token**，这个Token需要保存好。
![20260313 1773394327](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394327.webp)
然后回到OpenClaw进行Telegram对接，通过命令：openclaw onboard 进入配置
![20260313 1773394400](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394400.webp)
![20260313 1773394479](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394479.webp)
如果第一次打开你的Telegram 机器人，出现下方的这种配对码：
![20260313 1773394542](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394542.webp)
那么你需要手动进行配对下，打开一个新的PowerShell窗口，执行下面的命令进行配对：
```
openclaw pairing approve telegram 配对码
```
将命令中的配对码改成你自己的即可！输入配对码完成授权之后，你的Telegram机器人就可以通过OpenClaw使用AI能力了。
## **Openclaw对接个人****微****信：**
目前也已经有方案可以实现，可以参考下面这个入口：
### 【[**点击前往**](https://claw.guanjia.qq.com/)】
![20260313 1773394650 scaled](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773394650-scaled.webp)
目前只支持macOS系统，下载安装，需要内测码，可以根据里面的提示进行申请。
## **Openclaw对接****飞****书****机**
### 安装飞书官方插件
新版本 OpenClaw 已内置支持，我们可以使用以下命令来启用：
```
openclaw plugins enable feishu
```
接下来我们可以使用openclaw plugins list命令来查看是否已启用，disabled是禁用，loaded是启用：
![20260313 1773395113](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395113.webp)
### 在飞书开放平台创建机器人
打开飞书开放平台[https://open.feishu.cn/app](https://open.feishu.cn/app)点击”创建企业自建应用”：
![20260313 1773395153](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395153.webp)
填应用名称（如 “我的 OpenClaw AI”），描述 + 图标随意：
![20260313 1773395196](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395196.webp)
复制凭证App ID和App Secret，后面要用到：
![20260313 1773395237](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395237.webp)
接下来重新回到终端 输入以下命令配置 channel：
```
openclaw channels add
```
选择 “Feishu/Lark (飞书) (needs app creds)”：
![20260313 1773395277](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395277.webp)
选择 “Enter App Secret”：
分别输入我们之前在飞书创建应用的App Secret和App ID：
![20260313 1773395316](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395316.webp)
设置连接模式，并使用国内域名：
![20260313 1773395356](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395356.webp)
接下来的群聊策略选择 Open，这样可以响应所有的群聊：
如果选择 Allowlist，只会在白名单的群聊可以响应。
选择往后，回到菜单选择Finished，然后其他按默认回车即可，这样就就完成了飞书的配置。
![20260313 1773395395](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395395.webp)
回到网页端，查看频道选项，可以看到飞书已经启用：
![20260313 1773395435](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395435.webp)
### 启用机器人能力
接下来回到我们飞书创建的应用界面，左侧菜单 → 添加应用能力 → 机器人，点击”添加”按钮，开启机器人能力：
![20260313 1773395475](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395475.webp)
配置权限，左侧 → 权限管理 → 批量批量导入/导出权限：
![20260313 1773395515](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395515.webp)
粘贴以下 JSON：
```
{
  "scopes": {
    "tenant": [
      "aily:file:read",
      "aily:file:write",
      "application:application.app_message_stats.overview:readonly",
      "application:application:self_manage",
      "application:bot.menu:write",
      "cardkit:card:read",
      "cardkit:card:write",
      "contact:user.employee_id:readonly",
      "corehr:file:download",
      "event:ip_list",
      "im:chat.access_event.bot_p2p_chat:read",
      "im:chat.members:bot_access",
      "im:message",
      "im:message.group_at_msg:readonly",
      "im:message.p2p_msg:readonly",
      "im:message:readonly",
      "im:message:send_as_bot",
      "im:resource"
    ],
    "user": ["aily:file:read", "aily:file:write", "im:chat.access_event.bot_p2p_chat:read"]
  }
}
```
![20260313 1773395555](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395555.webp)
权限列表：
![20260313 1773395595](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395595.webp)
### 配置事件订阅
接下来我们需要为应用订阅相关事件，在左侧菜单选择事件与回调 → 事件配置：
![20260313 1773395634](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395634.webp)
订阅方式使用长连接接收事件（WebSocket）,然后保存。
添加以下事件：
- im.message.receive_v1- 接收消息
- im.message.message_read_v1- 消息已读回执
- im.chat.member.bot.added_v1- 机器人进群
- im.chat.member.bot.deleted_v1- 机器人被移出群
![20260313 1773395674](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395674.webp)
已添加事件列表：
![20260313 1773395714](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395714.webp)
### 发布应用
左侧 → 版本管理与发布 → 创建版本 → 提交审核 → 发布：
![20260313 1773395754](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395754.webp)
发布信息：
![20260313 1773395794](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395794.webp)
### 启动并测试
启动 openclaw：
```
openclaw gateway
或
openclaw gateway
--
port
18789
```
使用飞书创建一个测试群：
![20260313 1773395833](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395833.webp)
在群组的设置中添加我们刚才创建的机器人：
![20260313 1773395873](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395873.webp)
接下来我们就可以和 OpenClaw 开始聊天， 可以 @ 它让它介绍下自己，正常回复说明流程跑通了：
![20260313 1773395913](https://www.freedidi.com/wp-content/uploads/2026/03/20260313_1773395913.webp)
完成以上步骤之后，你就可以让OpenClaw同时在**QQ、****Telegram、****飞****书****等****多个****平台****运行****AI****机器****人**，并且还能免费调用GPT-5.4模型，实现真正的多平台AI助手。
如果你经常需要在多个聊天软件中处理消息，这种方式可以极大提升效率，比如自动回答问题、自动生成内容、处理群消息等等。
整体来说，这套方案最大的优势有三个：**完全****免费、****不需要****API****Key、****并且****支持****多****平台****接****入**。对于想搭建个人AI助手或者测试AI自动化的用户来说，是一个非常不错的方案。
### 感谢您的支持
- [**Next**](https://www.freedidi.com/23351.html)[Mac 本地跑 AI 大模型神器：OMLX，让 Mac Mini 推理速度提升 10 倍！](https://www.freedidi.com/23351.html)
- [**Previous**](https://www.freedidi.com/23223.html)[WARP连不上？Cloudflare Zero Trust 无限免费终极教程！MASQUE协议一次讲透 | 零度解说](https://www.freedidi.com/23223.html)
## [最火爆的 AI绘图模型： ChilloutMix 等其它5个热门模型下载！含提示词](https://www.freedidi.com/8621.html)
- 2023年3月4日
## [OKX 免费狂送狗狗币，零门槛，人人有份！先到先得，切勿错过！！](https://www.freedidi.com/17275.html)
- 2024年11月29日
## [【终身限免】Donemax Disk Clone for Windows 免费密钥 – 专业级硬盘克隆软件！](https://www.freedidi.com/21598.html)
- 2025年11月13日
## [刷短视频为什么会上瘾？一直停不下来，零度亲自给你示范下…….  | 零度解说](https://www.freedidi.com/11035.html)
- 2023年12月5日
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
