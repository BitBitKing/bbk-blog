---
title: "本地搭建谷歌Google Gemini人工智能聊天机器人，GPT4完美替代品"
date: 2023-12-20T21:57:19+08:00
draft: false
tags:
  - Web3
  - AI
  - CHATGPT
  - GPT4
  - Gemini
  - GOOGLE

---
## 前言
今天和大家说一下本地就能轻松搭建的谷歌Google Gemini Pro人工智能聊天机器人，可以作为GPT4完美替代品。

前些天，Google也终于开放了Gemini Pro 的接口免费申请，现在Chatgpt4已经停止注册，所以之前没有注册的目前还无法体验最强大的人工智能工具，而且本身GPT4成本就比较高，所以大多数人还是用的GPT3.5，虽然本身非常棒，但有一个问题就是资料库并不是最新的，所以今天咱们一起研究一下如何搭建同样非常强大的，谷歌公司推出的Gemini Pro，最主要的是可以本地或者是云搭建，完全属于自己的AI玩具！

## 步骤
1. Google 官方网站[申请API KEY](https://makersuite.google.com/app/apikey)

![](https://file.notion.so/f/f/c9767076-7f45-4cf5-a594-98c1b7a14a93/49ad58de-e52f-4c04-99ff-013570fb5861/Untitled.png?id=d168efc0-91ee-4984-a78f-50492528b2dd&table=block&spaceId=c9767076-7f45-4cf5-a594-98c1b7a14a93&expirationTimestamp=1703174400000&signature=yN_Z2qnCQIuMoqAVst7R4_Syb0swNZIMjUxpBwDjpEY&downloadName=Untitled.png)

2. 下载开源项目搭建Geimini Pro Chat：[GITHUB源码](https://github.com/babaohuang/GeminiProChat)
3. 部署，可以选择[容器平台](https://vercel.com/)部署或自己[购买服务器](http://bit.ly/vps-100)部署，也可以Docker部署

docker-compose.yml 写入以下内容：
```
version: '3'
services:
  geminiprochat:
    container_name: geminiprochat
    restart: always
    ports:
      - 3030:3000
    environment:
      - GEMINI_API_KEY=your-api-key
    image: howie6879/geminiprochat:v0.1.0+
 ```
 然后docker-compose up -d 启动即可

4. 登录使用，玩起来吧！

## 总结
人工智能时代，大家确实应该多多学习各种AI工具的使用，能极大的提高我们工作和生活中的效率。