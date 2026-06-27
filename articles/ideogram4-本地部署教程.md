AI 图片生成领域终于迎来了一款真正重量级的开源模型。Ideogram 官方近日正式发布**Ideogram 4**开放权重版本，并提供**93 亿参数（9B）**模型，支持本地部署、LoRA 微调以及 ComfyUI 工作流。作为近年来在文字渲染能力方面表现最出色的 AI 绘图模型之一，Ideogram 4 的开源意味着用户终于可以摆脱云端限制，在自己的电脑上体验接近商业级的 AI 图片生成能力。关键它是目前真正能媲美 GPT-Image / Midjourney 生成效果的开源模型！
![20260626072903 103447 scaled](https://www.freedidi.com/wp-content/uploads/2026/06/20260626072903_103447-scaled.webp)
相比以往的 Stable Diffusion、FLUX 等开源模型，Ideogram 4 最大的亮点不仅是画质提升，更重要的是对文字生成、海报设计和商业视觉创作进行了深度优化。官方还首次引入了结构化 JSON Prompt 的设计理念，将图片内容、版式布局、颜色搭配、光照风格以及每个元素的位置进行精确描述，使 AI 不再只是”生成一张图片”，而是真正按照设计稿完成创作。在本文中，我们将详细介绍 Ideogram 4 的主要特性、硬件需求、本地部署方法、ComfyUI 使用流程以及实际生成效果测试。
![20260626072830 264823](https://www.freedidi.com/wp-content/uploads/2026/06/20260626072830_264823.webp)
在 Design Arena第三方图像 Elo 排行榜中，所有已知开源的AI图片模型中，Ideogram 4 以绝对优势领先，远远领先于其它开放模型
![20260626073120 390207 scaled](https://www.freedidi.com/wp-content/uploads/2026/06/20260626073120_390207-scaled.webp)
### 开源基准测试
在衡量核心功能的标准开源基准测试中——布局控制（7Bench）、空间推理和对象保真度（SpatialGenEval）、文本渲染（X-Omni OCR）以及提示对齐（Prism）——Ideogram 4 在各个方面都缩小了与领先的闭源模型之间的差距。在布局控制（7Bench）方面，它显著优于所有闭源模型：
![20260626073300 486476](https://www.freedidi.com/wp-content/uploads/2026/06/20260626073300_486476.webp)
ContraLabs进行了一项由Contra旗下十位顶尖专业设计师组成的盲测字体设计评估。Ideogram 4在胜率方面遥遥领先，在四个模型中被选为最佳的概率高达47.9%，远超Gemini 3.1 Flash Image Preview (Nano Banana 2)（30.0%）、FLUX.2 [max]（15.5%）和Grok Imagine 1.0（15.0%）。
![20260626073356 903510](https://www.freedidi.com/wp-content/uploads/2026/06/20260626073356_903510.webp)
那么，它到底有没有这么强？普通电脑能不能跑？接下来我们就来本地部署，进行完整实测下！
# 本地部署教程
### **1、下载****Ideogram 4 开源模型**
（1）模型打包（推荐）：【[**点击下载**](https://pan.quark.cn/s/79cb466d5426)】或 【[**备用下载**](https://pan.cloudeop.com/s/46D7BFEFED64BC1A)】
（2）单独下载：【[ideogram4_fp8_scaled](https://huggingface.co/Comfy-Org/Ideogram-4/resolve/main/diffusion_models/ideogram4_fp8_scaled.safetensors)】、【[ideogram4_unconditional_fp8_scaled](https://huggingface.co/Comfy-Org/Ideogram-4/resolve/main/diffusion_models/ideogram4_unconditional_fp8_scaled.safetensors)】、【[qwen3vl_8b_fp8_scaled](https://huggingface.co/Comfy-Org/Qwen3-VL/resolve/main/text_encoders/qwen3vl_8b_fp8_scaled.safetensors)】、【[gemma4_e4b_it_fp8_scaled](https://huggingface.co/Comfy-Org/gemma-4/resolve/main/text_encoders/gemma4_e4b_it_fp8_scaled.safetensors)】、【[flux2-vae](https://huggingface.co/Comfy-Org/flux2-dev/resolve/main/split_files/vae/flux2-vae.safetensor)】
**下载好模型以后，将模型文件放到如下对应的****模型存储位置**
📂 ComfyUI/
├── 📂 models/
│ ├── 📂 diffusion_models/
│ │ ├── ideogram4_fp8_scaled.safetensors
│ │ └── ideogram4_unconditional_fp8_scaled.safetensors
│ ├── 📂 text_encoders/
│ │ ├── qwen3vl_8b_fp8_scaled.safetensors
│ │ └── gemma4_e4b_it_fp8_scaled.safetensors
│ └── 📂 vae/
│ └── flux2-vae.safetensors
---
![20260626074353 420583](https://www.freedidi.com/wp-content/uploads/2026/06/20260626074353_420583.webp)
### **2、安装新版 ComfyUI 客户端**
目前只有最新版的客户端才支持载入对应的生图工作流，所以如果你之前安装过旧版的 ComfyUI，建议升级或覆盖安装下。
【[**点击前往**](https://comfy.org/download)】或 【[**备用下载**](https://pan.quark.cn/s/cb5bc3cfe20b)】
![20260626074504 910506 scaled](https://www.freedidi.com/wp-content/uploads/2026/06/20260626074504_910506-scaled.webp)
### **3、下载工作流**
【[**点击下载**](https://github.com/Comfy-Org/workflow_templates/blob/main/templates/image_ideogram4_t2i.json)】或 【[**备用下载**](https://pan.quark.cn/s/ca98d1f981a9)】
下载工作流以后，直接将其拖入到 ComfyUI 即可使用！
![20260626075017 601150 scaled](https://www.freedidi.com/wp-content/uploads/2026/06/20260626075017_601150-scaled.webp)
魔法提示：
```
A high-resolution portrait photograph of a stunning mixed Asian woman with distinctive K-pop inspired styling and natural beauty. She has flowing long black hair that cascades over her shoulders, large expressive dark eyes with subtle makeup, and naturally full lips that create a captivating smile. Her slim, athletic figure is elegantly posed in a confident yet playful stance, wearing delicate sheer lingerie in soft neutral tones. The scene is illuminated by warm, intimate bedroom lighting that creates a golden glow across her detailed, flawless skin, with soft shadows adding depth and dimension to the portrait.
```
![20260626075550 540896](https://www.freedidi.com/wp-content/uploads/2026/06/20260626075550_540896.webp)
还有废墟中的汽车
![20260626075651 225476](https://www.freedidi.com/wp-content/uploads/2026/06/20260626075651_225476.webp)
```
Pose: Leaning lightly against tree, looking upward
Location: Dense forest with sun rays
Makeup: Fresh glow + soft pink lipstick
Hairstyle: Braided or half-tied
Clothes: Indo-western outfit with deep neckline
Text Tattoo: Minimal on collarbone
Expression: Peaceful, dreamy
```
![20260626095733 177232](https://www.freedidi.com/wp-content/uploads/2026/06/20260626095733_177232.webp)
功夫熊猫
```
{
  "high_level_description": "A stylized DreamWorks-style 3D character portrait of a chubby panda kung fu master in a wide horse-stance pose on a misty mountain training ground at golden hour, rendered with exaggerated cartoon proportions and cinematic warm key light against cool blue rim light.",
  "compositional_deconstruction": {
    "background": "Misty mountain peaks layered into the deep background with soft atmospheric haze, fading from dusty rose sky at the top through pale lavender to muted teal-blue silhouettes of distant ridges. Warm amber golden-hour glow spills across the upper-left of the scene while cool blue rim light separates the foreground silhouette from the misty backdrop. Packed-earth ground in warm tan-brown tones extends across the lower portion, scattered with fallen leaves in ochre and rust. Shallow depth of field falls off gently into the mountains.",
    "elements": [
      {
        "type": "obj",
        "desc": "Weathered wooden training post planted upright in the dirt just behind the panda's right shoulder, slightly out of focus. Rough grey-brown bark texture, tapered top, base disappearing into the packed earth."
      },
      {
        "type": "obj",
        "desc": "Chubby giant panda kung fu master, the unambiguous hero subject filling roughly 75% of the frame height from head near upper-third to feet near lower edge, centered horizontally, facing the camera in front view. Stylized CGI in DreamWorks register — large round head, chunky limbs, simplified plastic-cartoon fur clumps in rich black and creamy white. Oversized expressive dark eyes with bright specular catchlights looking directly at the camera, friendly closed-mouth smile, small rounded black ears. Standing in a wide horse-stance martial arts pose, weight settled evenly on both feet, both paws raised in open-palm guard position at chest height. Wearing loose-fitting brown kung fu shorts gathered at the waist with a knotted cloth belt in faded ochre, fabric folds catching the warm amber key light. Small beige cloth wrist wraps tied around each paw above the wrist. Strong clean specular highlights on the black nose and eyes, no micro-skin texture."
      },
      {
        "type": "obj",
        "desc": "Scattered bamboo stalks in teal-green and fallen leaves in ochre and rust tones strewn across the packed-earth ground in the foreground, partially framing the panda's feet. A few broken bamboo segments lie diagonally, leaves curled at the edges."
      }
    ]
  }
}
```
![20260626095831 078567](https://www.freedidi.com/wp-content/uploads/2026/06/20260626095831_078567.webp)
## **无审查的图片模型推荐：**
[Z-Image Turbo 本地安装教程！最近非常火的文生图AI模型，到底怎么样？](https://www.freedidi.com/22006.html)
### 打赏支持×感谢您的支持
支付宝微信支付BitcoinUSDT
- [**Previous**](https://www.freedidi.com/24592.html)[Claude Mythos 5 被“蒸馏”了？Qwythos-9B 突然开源，百万 Token 上下文，4GB 显存即可部署！](https://www.freedidi.com/24592.html)
