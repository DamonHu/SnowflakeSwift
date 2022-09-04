# SnowflakeSwift

Snowflake, use Swift. Generate unique incremental ID

基于`Swift`的雪花算法的实现，采用传统算法，生成递增的唯一ID。如果遇到时钟回拨，生成的为`nil`，让业务层面处理即可

![](./doc_image/twitter.png)

## 使用

将`SnowflakeSwift.swift`文件拖入项目即可

```
//创建
let general = SnowflakeSwift(IDCID: 4, machineID: 30)
//生成唯一ID
let id = general.nextID()
```

通过`id`也可以得出生成的时间、机房ID、机器ID

```
let time = general.time(id: id)
let idcID = general.IDC(id: id)
let machineID = general.machine(id: id)
```