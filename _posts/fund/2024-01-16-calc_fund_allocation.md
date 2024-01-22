---
title: 基金仓位计算接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

上传基金的净值，选择分析框架（股票型，债券型，CTA型，市场中性，混合型），异步计算仓位，返回计算任务编码；----------

#### 请求方法

POST

#### 请求URL

`/fund/calc_fund_allocation`

参数
-------------

| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| fund_code | string | 是 | 基金的市场编码，公募基金为市场编码，私募基金为协会编码 |
| strategy_type | integer | 否 | 1：股票型，2：债券型，3：CTA型，10：市场中性型，4：混合型 |
| fund_net_value_list | [] | 否 | 净值序列 |


#### 请求示例
```json
{
  "fund_code": "000404",
  "strategy_type": 1,
  "trading_day": "20231204"
}
```

响应
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|task_id	|			string	|任务标识|
|fund_code			|	float	|基金的市场编码|
|create_time		|		float	|任务发起时间|


#### 响应示例

```json
{
  "status": "success",
  "data": {
    "key1": "value1",
    "key2": "value2"
  }
}

```
