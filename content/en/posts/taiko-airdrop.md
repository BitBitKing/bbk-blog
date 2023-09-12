---
title: "Taiko Airdrop Tutorial"
date: 2023-09-12T06:40:57+08:00
draft: false
tags:
  - Web3
  - Crypto
  - taiko
  - airdrop
---

Taiko is a Layer 2 solution based on Ethereum's ZK-Rollup (Type 1 ZK-EVM). It can be considered a competitor to ZKSync. After successful testing in the first two phases, Taiko has now reached the Alpha3 phase, and it's confirmed that tokens will be released in the future. This means that early participants might receive good rewards. In this guide, we will outline the specific steps for interaction, including basic interactions, contract deployment, and setting up nodes. By following this tutorial, you should be well-prepared for similar airdrop campaigns in the future.

# Taiko ($TKO) Airdrop Specific Steps:
Let's start with the basics.

### Setting Up Your Wallet
1. Install Metamask and add the three chains to your wallet.
2. Add the corresponding tokens to your wallet.

### Obtain Test ETH
- sepolia-faucet.pk910.de
- faucet-sepolia.rockx.com
- sepoliafaucet.com
- infura.io/faucet/sepolia
- faucet.quicknode.com/ethereum/sepolia

### Get Test Tokens: Horse/BLL
- https://bridge.test.taiko.xyz/
- Click "Faucet," select Horse Token, and Mint.
- Select BLL Token and Mint.

### Use the Cross-Chain Bridge
- [https://bridge.test.taiko.xyz/](https://bridge.l3test.taiko.xyz/)
- [https://bridge.l3test.taiko.xyz/](https://bridge.l3test.taiko.xyz/)

### Token Swapping
- https://swap.test.taiko.xyz
- https://swap.l3test.taiko.xyz
- Add liquidity.

### Deploy a Smart Contract
- https://docs.openzeppelin.com/contracts/4.x/wizard 
- Open in Remix.
- Compilation (ctrl + s).
- Deploy & Run.
- Set the Environment to "Injected Provider - Metamask."
- Confirm that Metamask is set to Taiko L2.
- Deploy.
- In the Deployed Contracts section, add your wallet address and amount for minting.
- Copy the contract code from the blockchain explorer and add liquidity on the official website.

### Deploy a Node
- Pay attention to security. It's recommended to create a new wallet with a small balance for this purpose and store the private key securely.
- Set up a server at http://bit.ly/vps-100.
- Install Docker.
- `yum install -y yum-utils`
- `yum install docker-ce docker-ce-cli containerd.io docker-compose-plugin`
- Accept with 'y' twice during the process.
- `docker -v`
- `systemctl start docker`
- `systemctl enable docker`	//Enable auto-start
- `docker run hello-world`	//Test if installation is successful
- `yum install git`
- `git clone https://github.com/taikoxyz/simple-taiko-node.git`
- `cd simple-taiko-node`
- `cp .env.sample .env && cp .env.sample.l3 .env.l3`
- Edit .env or .env.13 and set enable_prover=true and your L1 private key.
- Register at https://www.infura.io/zh and obtain an API key.
- L1_ENDPOINT_HTTP: Endpoints - Sepolia - Copy
- L1_ENDPOINT_WS: WebSockets - Sepolia - Copy
- `docker compose up` or `docker compose up -d`
- Determine whether you want to become a Proposer or Prover by checking prerequisites and configuration requirements.
- View the dashboard at http://localhost:3001/d/L2ExecutionEngine/l2-execution-engine-overview
- For more details, refer to the official documentation: https://taiko.xyz/docs/guides/run-a-node/run-a-taiko-node
 
## Conclusion
These are all the interaction steps. Depending on your situation, you can choose to complete only the basic part or do everything. The more you do, the higher your chances of receiving airdrop rewards will be.
- Latest airdrop list: https://bit.ly/BBK-AirDrop
- Cryptocurrency toolkit: https://bit.ly/BitBitKing
