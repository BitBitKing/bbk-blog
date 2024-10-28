---
title: "Stable Diffusion 3.5 本地部署,最强的图形生成AI之一"
date: 2024-10-28T22:14:14+08:00
draft: false
toc: false
images:
tags:
  - AI
---
# 前言
前几天刚刚发布的SD3.5模型，可以说是目前最强的图形生成AI之一，一起来看一下如何部署和使用

# 简介
显存16G以上下载：
Stable Diffusion 3.5 Large [下载地址](https://huggingface.co/stabilityai/stable-diffusion-3.5-large)


显存8G以上下载：
Stable Diffusion 3.5 Large Turbo [下载地址](https://huggingface.co/stabilityai/stable-diffusion-3.5-large-turbo)

还有一个Stable Diffusion 3.5 Medium将于过几天发布

## 步骤
下载 SD3.5L_example_workflow.json

下载 sd3.5_large.safetensors

### ComfyUI：
[下载地址](https://github.com/comfyanonymous/ComfyUI)

安装或更新ComfyUI

找到ComfyUI/models/checkpoints

sd3.5_large.safetensors 拷贝进来

[clip_g.safetensors](https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/text_encoders/clip_g.safetensors?ref=www.bitbitking.com)

[clip_l.safetensors](https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/text_encoders/clip_l.safetensors?ref=www.bitbitking.com)

[t5xxl_fp16.safetensors](https://huggingface.co/stabilityai/stable-diffusion-3-medium/resolve/main/text_encoders/t5xxl_fp16.safetensors?ref=www.bitbitking.com)

下载到 ComfyUI/models/clip 文件夹

### 中文语言包（可选）：
[下载地址](https://github.com/AIGODLIKE/AIGODLIKE-ComfyUI-Translation)

解压到ComfyUI/custom_nodes

## 使用
- 运行根目录下脚本
run_cpu.bat or run_nvidia_gpu.bat

- 然后将最开始下载的SD3.5L_example_workflow.json拖入
TripleCCLIPLoader三个模型改成刚才下载的3个
- 输入 Prompt，玩起来吧！

