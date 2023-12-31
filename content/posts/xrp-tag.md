---
title: "什么是XRP的tag/memo标签"
date: 2023-07-24T23:04:02+08:00
draft: false
toc: false
images:
tags: ['xrp','tag','okx','欧易']
---

相信大家都知道 XRP 的tag/memo是什么，标签是在转账时用于识别中心化交易所背后具体的接收人是谁的，所以在由自己的钱包转到交易所时必须要填写这个 tag/memo，否则虽然资产转过去了，但不会入账自己的交易所账户。

如果不小心填错或忘记填写也不用慌，联系交易所客服索要申请地址，填写相应信息，就能够找回。

但还有另一个冷知识今天要分享下，钱包到交易所需要tag/memo，但是交易所到自己的硬件钱包或小狐狸等是不需要这个 tag/memo 的，之前交易所都没问题，但最近用okx（欧易交易所）发现，他这个设计有点反人性，没有任何有用提示，就只显示提现地址无效。
尝试着加地址白名单也不行，其实在产品设计允许为空就好了，但他既然没有这么设计，就只能自己想办法了，随便填了个数字1居然真的就过了。
经过网上查找解决方案，其实只需要在 tag/memo标签随意填写一个 0 到 4294967295 数字就可以了，就是这么简单！