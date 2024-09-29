---
title: "Aleo 零知识证明网络服务器节点搭建教程"
date: 2024-09-29T21:00:49+08:00
draft: false
tags:
  - Web3
  - Crypto
  - Aleo
  - Node

---

# Aleo简介
Aleo 致力于通过其创新平台为用户和应用程序开发人员提供前所未有的隐私保护。利用去中心化系统和零知识加密技术，Aleo 实现了网络上用户数据的绝对保密性。

Aleo 的核心是提供无限计算，同时保证用户的隐私。通过利用区块链技术，Aleo 消除了对可信赖的第三方或中心化服务器的需求，从而确保了数据的安全和完整性。

就在前些天，也是刚刚完成了主网上线，之前也是完成了由Andreessen Horowitz 领投，总额两亿美元的B轮融资。

## 服务器准备
1. 操作系统：仅支持64位系统，以下版本更新到最新
- Clients：Ubuntu 22.04 (LTS), macOS Sonoma，Windows 11
- Provers：Ubuntu 22.04 (LTS), macOS Sonoma
- Validators：Ubuntu 22.04 (LTS)
2. CPU：仅支持64位架构
- Clients：32核
- Provers：32核（推荐64核）
- Validators：32核（推荐64核）
3. 内存：DDR4或更高
- Clients：32G
- Provers：32G（推荐64G）
- Validators：64G（最好128G）
4. 存储：PCIe Gen 3 x4, PCIe Gen 4 x2 NVME SSD 或更好
- Clients：300G 磁盘空间
- Provers：32G 磁盘空间
- Validators：2TB磁盘空间（推荐4TB）
5. 网络：
- Clients：100Mbps 上传下载带宽
- Provers：500Mbps 上传下载带宽
- Validators：1000Mbps 上传下载带宽
6. GPU：
- Clients：目前不需要
- Provers：CUDA-enabled GPU（）
- Validators：目前不需要

## 安装部署
1. 安装rust `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`，选择默认1
2. `source "$HOME/.cargo/env"`
3. `apt update`
4. apt install git -y
5. 安装官方源码 `git clone https://github.com/AleoHQ/snarkOS.git --depth 1`
6. `cd snarkOS`
7. `./build_ubuntu.sh`
8. 创建账户 `snarkos account new` 注意保存好地址和私钥。
9. `./run-prover.sh` 并输入private key，运行节点。
但关闭窗口后节点停止运行，想要后台运行有几种办法，比如写个脚本，用`nohup ./run-prover.sh &`后台运行，也可以用screen创建虚拟终端

# 总结
技术相关项目涉及到的技术栈会比较多，也很难全面细致的介绍，想要从事这方面项目的要有自学钻研的能力，多学习一些技术栈没坏处。