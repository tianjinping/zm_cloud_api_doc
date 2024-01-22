---
title: 查询基金的标签列表
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询基金的历史标签数据(截面&最新）。

#### 请求方法

POST

#### 请求URL

`/label/get_fund_label_list`

#### 请求头

```markdown
Content-Type: application/json
ZMApi-Key：zm-**********
```

参数
-------------

| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| fund_code | string | 是 | 基金的市场编码 |

#### 请求示例
```json
{
  "fund_code": 100000
  
}
```


响应
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|label_id|int|标签编号|
|label_name|string|标签名称|
|trading_day|string|交易日|






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
