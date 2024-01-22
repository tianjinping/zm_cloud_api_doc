---
title: 基金仓位查询接口
author: wisdom-fintech
date: 2024-01-18
category: fund
layout: post
mermaid: true
---

#### 描述

查询基金的仓位，包括股票型，债券型，CTA型，市场中性型，混合型等。

#### 请求方法

POST

#### 请求URL

`/fund/get_allocation_ratio`

#### 请求头

```markdown
Content-Type: application/json
ZMApi-Key：zm-**********
```

参数
-------------


| 参数名 | 类型 | 必选 | 描述 |
| ------ | ---- | ---- | ---- |
| fund_code | string | 是 | 基金的市场编码，公募基金为市场编码，私募基金为协会编码 |
| strategy_type | integer | 否 | 1：股票型，2：债券型，3：CTA型，10：市场中性型，4：混合型 |
| trading_day | string | 否 | 若不填，则为最新日期，数据格式：yyyyMMdd |


#### 请求示例
```json
{
    "fund_code": "002124",
    "strategy_type": 1,
    "trading_day": "20240116"
}
```

> ##### TIP
>
> 根据请求的strategy_type的不同，返回的数据字段会有所差异
{: .block-tip }

响应（股票型)
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|stock_ratio	|			float	|大类资产配置 -股票仓位|
|bond_ratio			|	float	|大类资产配置 -债券仓位|
|cash_ratio		|		float	|大类资产配置 -现金仓位|
|large_cap_value_ratio	|			float|	风格配置 -大盘价值仓位|
|mid_cap_value_ratio		|		float	|风格配置 -中盘价值仓位|
|small_cap_value_ratio		|		float|	风格配置 -小盘价值仓位|
|large_cap_growth_ratio		|		float|	风格配置 -大盘成长仓位|
|mid_cap_growth_ratio			|	float	|风格配置 -中盘成长仓位|
|small_cap_growth_ratio		|		float|	风格配置 -小盘成长仓位|
|up_sector_ratio			|	float	|行业配置 -周期上游仓位|
|mid_sector_ratio			|	float	|行业配置 -周期中游仓位|
|finance_ratio			|	float	|行业配置 金融仓位|
|consumer_ratio		|		float|	行业配置 -消费仓位|
|tmt_ratio			|	float	|行业配置 -TMT仓位|
|trading_day			|	string|	交易日|
|total_ratio			|	float	|总仓位|
|risk_exposure		|		float|	风险敞口|



#### 响应示例

```json
{
  "code" : 0,
  "msg" : "success",
  "data" : [
    {
      "trading_day" : "2024-01-16",
      "fund_code" : "002124",
      "stock_ratio" : 1.0,
      "bond_ratio" : 0.0,
      "cash_ratio" : 0.0,
      "large_cap_value_ratio" : 0.0,
      "mid_cap_value_ratio" : 0.0,
      "small_cap_value_ratio" : 0.0,
      "large_cap_growth_ratio" : 0.23123,
      "mid_cap_growth_ratio" : 0.58504,
      "small_cap_growth_ratio" : 0.18373,
      "up_sector_ratio" : 0.0,
      "mid_sector_ratio" : 0.0,
      "down_sector_ratio" : 0.35251,
      "finance_ratio" : 0.0,
      "consumer_ratio" : 0.21477,
      "tmt_ratio" : 0.43272
    }
  ],
  "columns" : null,
  "status" : [ ]
}

```


响应（债券型）
-------------



| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|stock_ratio|float|大类资产配置 -股票仓位
|bond_ratio|float|大类资产配置 -债券仓位
|convertible_bond_ratio|float|大类资产配置 -可转债仓位
|cash_ratio|float|大类资产配置 -现金仓位
|bonds_lt_1y_ratio|float|久期配置-1年期以下债券仓位
|bonds_1_3y_ratio|float|久期配置-1-3年期债券仓位
|bonds_3_5y_ratio|float|久期配置-3-5年期债券仓位
|bonds_5_7y_ratio|float|久期配置-5-7年期债券仓位
|bonds_gt_10y_ratio|float|久期配置-10年期以上债券仓位
|credit_interest_rate_bonds_ratio|float|信用配置-利率债仓位
|high_grade_credit_bonds_ratio|float|信用配置-高等级信用债仓位
|high_yield_credit_bonds_ratio|float|信用配置-高收益信用债仓位
|financial_bonds_ratio|float|风格配置-金融债仓位
|urban_investment_bonds_ratio|float|风格配置-城投债仓位
|state_owned_enterprise_bonds_ratio|float|风格配置-国企债仓位
|private_enterprise_bonds_ratio|float|风格配置-民企债仓位
|real_estate_bonds_ratio|0|风格配置-金融债仓位
|style_interest_rate_bonds_ratio|float|风格配置-利率债仓位
|trading_day|string|交易日




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



响应（CTA型)
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|stock_index_futures_ratio|float|大类配置-股指期货仓位
|treasury_bond_futures_ratio|float|大类配置-国债期货配置 
|commodity_futures_ratio|float|大类配置-大宗商品配置 
|cash_ratio|float|大类资产配置 -现金仓位
|agricultural_product_futures_ratio|float|大宗商品-农产品配置 
|metal_futures_ratio|float|大宗商品-金属期货配置 
|chemical_material_futures_ratio|float|大宗商品-化工原料配置 
|energy_futures_ratio|float|大宗商品-能源期货配置 
|trading_day|string|交易日



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


响应（市场中性型)
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|large_cap_value_ratio|float|风格配置 -大盘价值仓位
|mid_cap_value_ratio|float|风格配置 -中盘价值仓位
|small_cap_value_ratio|float|风格配置 -小盘价值仓位
|large_cap_growth_ratio|float|风格配置 -大盘成长仓位
|mid_cap_growth_ratio|float|风格配置 -中盘成长仓位
|small_cap_growth_ratio|float|风格配置 -小盘成长仓位
|up_sector_ratio|float|行业配置 -周期上游仓位
|mid_sector_ratio|float|行业配置 -周期中游仓位
|finance_ratio|float|行业配置 金融仓位
|consumer_ratio|float|行业配置 -消费仓位
|tmt_ratio|float|行业配置 -TMT仓位
|trading_day|string|交易日



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


响应（混合型)
-------------


| 字段名 | 类型 |  描述 |
| ------ | ---- |  ---- |
|code				|int	|接口状态|
|msg				|string	|错误原因|
|data				|[]	|返回值|
|large_cap_value_ratio|float|风格配置 -大盘价值仓位
|mid_cap_value_ratio|float|风格配置 -中盘价值仓位
|small_cap_value_ratio|float|风格配置 -小盘价值仓位
|large_cap_growth_ratio|float|风格配置 -大盘成长仓位
|mid_cap_growth_ratio|float|风格配置 -中盘成长仓位
|small_cap_growth_ratio|float|风格配置 -小盘成长仓位
|up_sector_ratio|float|行业配置 -周期上游仓位
|mid_sector_ratio|float|行业配置 -周期中游仓位
|finance_ratio|float|行业配置 金融仓位
|consumer_ratio|float|行业配置 -消费仓位
|tmt_ratio|float|行业配置 -TMT仓位
|bonds_lt_1y_ratio|float|久期配置-1年期以下债券仓位
|bonds_1_3y_ratio|float|久期配置-1-3年期债券仓位
|bonds_3_5y_ratio|float|久期配置-3-5年期债券仓位
|bonds_5_7y_ratio|float|久期配置-5-7年期债券仓位
|bonds_gt_10y_ratio|float|久期配置-10年期以上债券仓位
|credit_interest_rate_bonds_ratio|float|信用配置-利率债仓位
|high_grade_credit_bonds_ratio|float|信用配置-高等级信用债仓位
|high_yield_credit_bonds_ratio|float|信用配置-高收益信用债仓位
|financial_bonds_ratio|float|风格配置-金融债仓位
|urban_investment_bonds_ratio|float|风格配置-城投债仓位
|state_owned_enterprise_bonds_ratio|float|风格配置-国企债仓位
|private_enterprise_bonds_ratio|float|风格配置-民企债仓位
|real_estate_bonds_ratio|0|风格配置-金融债仓位
|style_interest_rate_bonds_ratio|float|风格配置-利率债仓位
|trading_day|string|交易日




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

参考链接：

- <https://docs.spring.io/spring-boot/docs/2.7.18/reference/html/using.html#using.devtools>
- <https://blog.csdn.net/silentwolfyh/article/details/85048745>
- <https://www.cnblogs.com/ios9/p/14410299.html>