# SnowflakeSwift

![](https://img.shields.io/badge/Swift-5.0-brightgreen) ![](https://img.shields.io/badge/iOS-available-brightgreen) ![](https://img.shields.io/badge/MacOS-available-brightgreen) ![](https://img.shields.io/badge/License-MIT-brightgreen)

Snowflake, use Swift. Generate unique incremental ID

基于`Swift`的雪花算法的实现，采用传统算法，生成递增的唯一ID。如果遇到时钟回拨，生成的为`nil`，让业务层面处理即可。

`雪花算法`是`twitter`开源的用于分布式环境下生成唯一ID的算法，原始版本[snowflake](https://github.com/twitter-archive/snowflake/releases/tag/snowflake-2010)使用`Scala`开源，基于时间戳递增的属性。作为数据库的主键比`UUID`有着更快的读写。各个变量长度可以根据业务进行改进，该库是基于最原生的实现。

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