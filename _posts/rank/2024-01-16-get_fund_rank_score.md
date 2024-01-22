---
title: 查询标尺库的排名接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询或计算基金在指定标尺库下的排名结果。

#### 请求方法

POST

#### 请求URL

`/rank/get_fund_rank_score`

#### 请求头


```markdown
Content-Type: application/json
ZMApi-Key：zm-**********
```

参数
-------------

| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| fund_code | string | 否 | 基金的市场编码，唯一标识一只基金 |
| zy_code | string | 否 | 朝阳的基金内部编码，唯一标识一只基金 |
| fund_net_value_list | [] | 否 | 净值序列 |
| strategy_type | int | 否 | 策略类型，1：股票型，2：债券型，3：CTA，4：市场中性  |
| ruler_id | int | 是 | 排名样本库编码 |


#### 请求示例
```json
{
    "fund_code": "SX8331",
    "zy_code": null,
    "fund_net_value_list": null,
    "strategy_type": null,
    "ruler_id": 1002
}
```

响应
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|annual_yield_index_value|decimal|年化收益率-指标值|
|annual_yield_rank|decimal|年化收益率-同类排名|
|annual_yield_norm_rank|decimal|年化收益率-同类排名（归一化）|
|month_winrate_index_value|decimal|月胜率-指标值|
|month_winrate_rank|decimal|月胜率-同类排名|
|month_winrate_norm_rank|decimal|月胜率-同类排名（归一化）|
|annual_excess_yield_index_value|decimal|年化超额收益率-指标值|
|annual_excess_yield_rank|decimal|年化超额收益率-同类排名|
|annual_excess_yield_norm_rank|decimal|年化超额收益率-同类排名（归一化）|
|downsd_index_value|decimal|下行标准差-指标值|
|downsd_rank|decimal|下行标准差-同类排名|
|downsd_norm_rank|decimal|下行标准差-同类排名（归一化）|
|draw_down_index_value|decimal|最大回撤-指标值|
|draw_down_rank|decimal|最大回撤-同类排名|
|draw_down_norm_rank|decimal|最大回撤-同类排名（归一化）|
|draw_down_days_index_value|decimal|回撤回补-指标值|
|draw_down_days_rank|decimal|回撤回补-同类排名|
|draw_down_days_norm_rank|decimal|回撤回补-同类排名（归一化）|
|sharpe_index_value|decimal|夏普比率-指标值|
|sharpe_rank|decimal|夏普比率-同类排名|
|sharpe_norm_rank|decimal|夏普比率-同类排名（归一化）|
|sortino_index_value|decimal|索提诺比率-指标值|
|sortino_rank|decimal|索提诺比率-同类排名|
|sortino_norm_rank|decimal|索提诺比率-同类排名（归一化）|
|calmar_index_value|decimal|卡玛比率-指标值|
|calmar_rank|decimal|卡玛比率-同类排名|
|calmar_norm_rank|decimal|卡玛比率-同类排名（归一化）|
|alpha_risk_stock_rank|decimal|风险因子超额能力-同类排名|
|alpha_risk_stock_norm_rank|decimal|风险因子超额能力-同类排名（归一化）|
|alpha_asset_rank|decimal|大类资产配置超额能力-同类排名|
|alpha_asset_norm_rank|decimal|大类资产配置超额能力-同类排名（归一化）|
|alpha_style_rank|decimal|风格配置超额能力-同类排名|
|alpha_style_norm_rank|decimal|风格配置超额能力-同类排名（归一化）|
|alpha_industry_rank|decimal|行业配置超额能力-同类排名|
|alpha_industry_norm_rank|decimal|行业配置超额能力-同类排名（归一化）|





#### 响应示例

```json
{
  "code" : 0,
  "msg" : "success",
  "data" : [
    {
      "inner_code" : 101081,
      "ruler_id" : 1002,
      "min_day" : "2017-10-31",
      "max_day" : "2023-03-03",
      "rank_config_id_name" : "公募-股票-次高波动",
      "fund_name" : "相聚芒格精选2号二期证券投资私募基金",
      "rank_fund_num" : 3126,
      "annual_yield_index_value" : 0.1042106939,
      "annual_yield_rank" : 0.468,
      "annual_yield_norm_rank" : 0.361,
      "month_winrate_index_value" : 0.5151515152,
      "month_winrate_rank" : 0.3672,
      "monthwinrate_norm_rank" : 0.8179,
      "annual_excess_yield_index_value" : 0.0816987878,
      "annual_excess_yield_rank" : 0.4707,
      "annual_excess_yield_norm_rank" : 0.3737,
      "downsd_index_value" : 0.0167898077,
      "downsd_rank" : 0.6873,
      "downsd_norm_rank" : 0.8621,
      "draw_down_index_value" : -0.3388966161,
      "draw_down_rank" : 0.218,
      "draw_down_norm_rank" : 0.0102,
      "draw_down_days_index_value" : 763.0,
      "draw_down_days_rank" : 0.4227,
      "draw_down_days_norm_rank" : 0.4674,
      "sharpe_index_value" : 0.4491034054,
      "sharpe_rank" : 0.5383,
      "sharpe_norm_rank" : 0.6702,
      "sortino_index_value" : 0.631344004,
      "sortino_rank" : 0.4356,
      "sortino_norm_rank" : 0.2263,
      "calmar_index_value" : 0.307499954,
      "calmar_rank" : 0.5047,
      "calmar_norm_rank" : 0.5349,
      "alpha_risk_stock_rank" : 0.5011,
      "alpha_risk_stock_norm_rank" : 0.4905,
      "alpha_asset_rank" : 0.4512,
      "alpha_asset_norm_rank" : 0.3607,
      "alpha_style_rank" : 0.3419,
      "alpha_style_norm_rank" : 0.193,
      "alpha_industry_rank" : 0.3802,
      "alpha_industry_norm_rank" : 0.19,
      "col_flag" : 2
    }
  ]
}

```

#### demo
```python
import requests
import json

# 远程请求的url
url = "http://www.zmapi-test.wisdom-fintech.com/zmapi/rank/get_fund_rank_score"

# 设置header
headers = {
    "Content-Type": "application/json",
    "ZMApi-Key": "zm-**********"
}

# 设置参数
params = {
    "fund_code": "SX8331",
    "zy_code": None,
    "fund_net_value_list": None,
    "strategy_type": None,
    "ruler_id": 1002
}


try:
    # post请求
    response = requests.post(url, data=json.dumps(params),headers=headers)
    print(response.json())
except Exception as err:
    print(err)
```
