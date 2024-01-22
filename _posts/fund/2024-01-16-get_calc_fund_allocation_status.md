---
title: 查询基金仓位计算状态接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

用任务编号查询基金仓位计算状态和结果。

#### 请求方法

POST

#### 请求URL

`/fund/get_calc_fund_allocation_status`

参数
-------------

| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| task_id | string | 是 | 任务编码 |

#### 请求示例
```json
{
  "task_id": "zm-xyuwi6jhp8"
}
```

响应
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|calc_status	|			int	|0:计算完成 1：计算中 2：排队中，-1：计算失败|


> ##### TIP
>
> 如果calc_status 状态为'计算完成'，则同时会返回计算结果，计算结果同'基金仓位查询接口'
{: .block-tip }

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
