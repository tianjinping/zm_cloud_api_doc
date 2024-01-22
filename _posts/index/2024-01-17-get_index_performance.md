---
title: 查询指数绩效接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询至明指数的绩效分析（截面&最新）。

#### 请求方法

POST

#### 请求URL

`/index/get_index_performance`

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
|trading_day|string|交易日|
|annual_down_sd|float|年化下行标准差|
|annual_sd|float|年化波动率|
|annual_yield|float|年化收益率|
|best_month_yield|float|最好月收益率、最好季度收益率|
|best_quarter_yield|float|最好月收益率、最好季度收益率|
|calmar|float|卡玛比|
|day_win_rate|float|日胜率|
|down_sd|float|下行标准差|
|draw_down|float|回撤-*|
|draw_down_days|float|回撤回补天数|
|fall_month_avg_yield|float|Down比较好|
|fall_month_ratio|float|Down比较好|
|fall_month_sd|float|Down比较好|
|ir|float|信息比率|
|max_fall_day|float|最大下跌周|
|max_fall_month|float|最大下跌月|
|max_rise_day|float|最大上涨日|
|max_rise_month|float|最大上涨月|
|month_win_rate|float|月胜率、周胜率|
|rise_Month_Avg_yield|float|上涨月平均收益|
|rise_month_ratio|float|上涨月占比|
|rise_month_sd|float|上海月标准差|
|sd|float|波动率|
|sharpe|float|夏普比|
|sortino|float|索提诺比|
|var_value|float|在险价值|
|worst_month_yield|float|最差月收益率、最差季度收益率|
|worst_quarter_yield|float|最差-*|
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
