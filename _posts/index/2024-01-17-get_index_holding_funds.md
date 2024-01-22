---
title: 查询指数持仓接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询至明指数指定日期的持仓（截面&最新）。

#### 请求方法

POST

#### 请求URL

`/index/get_index_holding_funds`

参数
-------------

| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| index_id | int | 是 | 指数编码 |
| trading_day | string | 否 | 净值日，空则默认返回最新，数据格式:yyyyMMdd |

#### 请求示例
```json
{
  "index_id": 100000,
  "trading_day": "20240118"
}
```

响应
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|asset_type|int|资产类型|
|fund_code|string|基金的市场编码|
|fund_name|string|基金名称|
|manager_name|string|管理人名称|
|manager_company|string|管理人公司名称|
|weight|float|权重|



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
