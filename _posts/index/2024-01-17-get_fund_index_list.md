---
title: 查询至明指数系列接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询至明指数的序列，以树形结构展示。

#### 请求方法

POST

#### 请求URL

`/index/get_fund_index_list`

#### 请求头

```markdown
Content-Type: application/json
ZMApi-Key：zm-**********
```

参数
-------------

| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| category_name | string | 否 | 分类名称，不传则为全部数据 |

#### 请求示例
```json
{
  "category_name": "行业优选"
}
```

响应
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|category_parent_name|string|类别父名称
|index_id|int|指数编码
|index_name|string|指数名称



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
