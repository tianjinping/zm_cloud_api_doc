---
title: index
author: wisdom-fintech
date: 2024-01-18
category: Jekyll
layout: post
---


# 请求头设置

```markdown
Content-Type: application/json
ZMApi-Key：zm-**********
```

# 环境配置 

```markdown
生产环境: http://www.zmapi.wisdom-fintech.com/
开发、测试环境: http://www.zmapi-test.wisdom-fintech.com/
```

# 调用示例

```python
import requests
import json

# 远程请求的url
url = "http://www.zmapi-test.wisdom-fintech.com/cloudapi/rank/get_fund_rank_score"

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

    response = requests.post(url, data=json.dumps(params),headers=headers)
    print(response.json())
except Exception as err:
    print(err)
```
