---
title: 查询标签的出入池记录
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询基金的标签的出入池记录。

#### 请求方法

POST

#### 请求URL

`/label/get_label_pool_records`

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

#### 请求示例
```json
{
  "label_id": 100000
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
|fund_code|string|基金的市场编码|
|inout|int|出入标识|





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
