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
- CPU

## 安装部署
1. 安装rust `curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh`，选择默认1
2. `source "$HOME/.cargo/env"
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