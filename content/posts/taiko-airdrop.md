---
title: "Taiko 公链交互完全教程[明牌空投]"
date: 2023-09-12T06:40:57+08:00
draft: false
tags:
  - Web3
  - Crypto
  - taiko
  - airdrop
---

Taiko是基于以太坊的ZK-Rollup (类型1 ZK-EVM)Layer2。算是ZKSync的竞品，经过了前两个阶段的测试，目前来到了Alpha3阶段，确认将来会发布代币，可以说是明牌空投了，所以在早期参与的用户回报应该会不错，这里就给大家整理一下具体的交互步骤，包括常规交互、部署合约和搭建节点，通过这一个教程，以后做这类空投应该也会触类旁通。

# Taiko ($TKO)空投具体步骤：
先从最基础的开始

### 设置钱包
1. 安装Metamask，将三个链添加到钱包
2. 将相应代币添加到钱包

### 获取测试 ETH
- sepolia-faucet.pk910.de
- faucet-sepolia.rockx.com
- sepoliafaucet.com
- infura.io/faucet/sepolia
- faucet.quicknode.com/ethereum/sepolia

### 获取测试代币 Horse/BLL
- https://bridge.test.taiko.xyz/
- 点击Faucet，选择 Horse Token, Mint
- 选择BLL Token, Mint

### 操作跨链桥
- [https://bridge.test.taiko.xyz/](https://bridge.l3test.taiko.xyz/)
- [https://bridge.l3test.taiko.xyz/](https://bridge.l3test.taiko.xyz/)

### 交换代币
- https://swap.test.taiko.xyz
- https://swap.l3test.taiko.xyz
- 添加流动性

### 部署合约
- https://docs.openzeppelin.com/contracts/4.x/wizard 
- Open in Remix
- Compilation (ctrl + s)
- Deploy & Run
- Environment 修改为 Injected Provider - Metamask
- 确认 Metamask 选择的为Taiko L2
- Deploy
- Deployed Contracts 中 mint处添加自己钱包地址和数额
- 区块链浏览器中复制合约代码，去官方添加流动性
- 0x07Cd84B334FC945CEd9B279269Bee82d02A6ac1C 刚部署的合约地址，懒得部署的可以直接swap交互着玩

### 部署节点
- 注意安全，建议新建钱包，充值少量余额，涉及到私钥保存
- 开通服务器 http://bit.ly/vps-100
- 安装docker
- `yum update`
- `yum install -y yum-utils`
- `yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin`
- 过程中两次 y 同意
- `docker -v`
- `systemctl start docker`
- `systemctl enable docker`	//开机启动
- `docker run hello-world`	//测试安装成功
- `yum install git`
- `git clone https://github.com/taikoxyz/simple-taiko-node.git`
- `cd simple-taiko-node`
- `cp .env.sample .env && cp .env.sample.l3 .env.l3`
- vim .env 或 .env.13  修改 enable_prover=true, 并设置L1 私钥
- https://www.infura.io/zh 注册并获取 API
- L1_ENDPOINT_HTTP: Endpoints - Sepolia - Copy
- L1_ENDPOINT_WS: WebSockets - Sepolia - Copy
- `docker compose up` or `docker compose up -d`
- 成为 Proposer 还是 Prover, 查看先决条件及配置要求
- 查看面板 http://localhost:3001/d/L2ExecutionEngine/l2-execution-engine-overview
- 更多详情参照官方文档 https://taiko.xyz/docs/guides/run-a-node/run-a-taiko-node
 
## 总结
以上就是全部交互流程，可以根据自己实际情况选择，是只完成基础部分，还是全部都做，肯定是做的越多到时候空投的比例会越高。
- 最新空投列表 https://bit.ly/BBK-AirDrop
- 币圈工具集 https://bit.ly/BitBitKing

{{< youtube fM9Q7yAkcT0 >}}