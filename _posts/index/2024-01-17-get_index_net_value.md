---
title: 查询指数净值接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询至明指数的指定日期的净值（截面&最新）。

#### 请求方法

POST

#### 请求URL

`/index/get_index_net_value`

#### 请求头

```markdown
Content-Type: application/json
ZMApi-Key：zm-**********
```

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
|trading_day|string|指数净值日|
|net_value|float|指数净值|
|yield|float|收益率|



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
