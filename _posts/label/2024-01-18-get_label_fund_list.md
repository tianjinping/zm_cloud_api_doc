---
title: 查询至明标签成分基金接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询至明标签成分基金数据（截面&最新）。

#### 请求方法

POST

#### 请求URL

`/label/get_label_fund_list`

#### 请求头

```markdown
Content-Type: application/json
ZMApi-Key：zm-**********
```

参数
-------------

| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| label_id | int | 是 | 标签编号 |
| trading_day | string | 否 | 查询的日期，不传则为默认为最新日期，格式：yyyyMMdd |

#### 请求示例
```json
{
  "label_id": 100000,
  "trading_day": "20240108"
  
}
```


响应
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|trading_day|string|交易日|
|asset_type|int|资产类型|
|fund_code|string|基金的市场编码|
|fund_name|string|基金名称|
|manager_name|string|管理人名称|
|manager_company|string|管理人公司名称|





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
