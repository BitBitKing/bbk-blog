---
title: "IO.NET GPU 显卡算力挖矿教程"
date: 2024-03-09T19:26:48+08:00
draft: false
tags:
  - Web3
  - Crypto
  - 显卡
  - 挖矿
---
IO.NET最近显卡资源出租挖矿模式比较火，后续也有空投可能，代币即将上线，今天说一下如何挖矿，首先支持Ubuntu Linux，MacOS和Windows操作系统，就以Windows为例讲解具体过程

![https://images.mirror-media.xyz/publication-images/L8Zy2W7YT2lQ8Q0Y5DoCZ.gif](https://images.mirror-media.xyz/publication-images/L8Zy2W7YT2lQ8Q0Y5DoCZ.gif)

### 首先到官方网站注册并登录 cloud.io.net

- 下拉找到Worker
- 点击 Conenct New Device 连接新的设备
- Select Supplier 部分根据需求选择 io.net 或者Render
- 填写设备命名
- 选择操作系统，我们这里选择Windows
- 设备类型选择 GPU Worker
- Docker 和 Nvidia 驱动安装，按照文档中有关Docker,Cuda和Nvidia驱动程序安装的步骤进行操作
- 在终端中运行命令，确保docker在后台运行

等待连接，如果没有连接就点击 Refresh 刷新

## 开启虚拟化

- 首先确认启用虚拟化BIOS，任务管理器 - 性能 查看，如果没有启用

![https://mirror.xyz/_next/image?url=https%3A%2F%2Fimages.mirror-media.xyz%2Fpublication-images%2F28Osj3nzS1nQCIyn5Uigq.jpg&w=1920&q=75](https://mirror.xyz/_next/image?url=https%3A%2F%2Fimages.mirror-media.xyz%2Fpublication-images%2F28Osj3nzS1nQCIyn5Uigq.jpg&w=1920&q=75)

1. 查询自己主板型号在BIOS或UEFI中启用虚拟化技术
2. 管理员权限运行终端,输入命令
`dism.exe /online /enable-feature /featurename:Microsoft-Windows-Subsystem-Linux /all /norestart`
3. `dism.exe /online /enable-feature /featurename:VirtualMachinePlatform /all /norestart`
4. `wsl --set-default-version 2`
5. 重启计算机



## 安装 Docker

- www.docker.com/products/docker-desktop 下载相应版本

- 安装 Docker

- 打开 Docker 客户端 Resources - WSL integration，Enable integration witrh my default WSL distro，然后点击 Refresh 刷新

- 可以在终端CMD中输入 `docker --version` 看到版本信息表示成功

## 确认显卡信息

- 终端输入 nvidia-smi，如果报错就去官网下载并更新相应版本显卡驱动

- 下载安装CUDA工具包 developer.nvidia.com/cuda-downloads

- CMD 中 `nvcc --version` 验证