# 转换为字符串

```php
string date ( string format [, int timestamp])
```

不管Unix时间戳在编程时使用起来如何方便，它对最终用户来说都是不友好的，毕竟没有人会用秒数来表示时间。

人们都喜欢用各种格式化之后的日期格式来表示时间，因此，我们可以通过`date()`函数来讲时间戳转换为我们想要的格式。

`date()`函数有两个参数：第一个是参数包含你想要转换成某种格式的字符串，第二个参数是你想要转换的时间戳。如果你不提供第二个参数的话，PHP假定你想使用当前时间。

`date()`的第一个参数很关键，是由一系列预定义的选项组成的字符串。你可以在字符串中庸其他字符，这些字符将被直接复制到格式化的日期中。如果你用到某个预定义的字符而不需要其作为日期选项时，你需要用`\`将其进行转义。如果你要用的转义字符已经存在一个转义序列当中，你需要将其再次转义。听起来可能很别扭，别担心，我们稍后讲几个例子。

下面是全部的日期格式字符串，注意他们是**大小写敏感**的。

|格式化字符|描述|例子|
|:-:|:-:|:-:|
|a |小写的 am/pm |am 或 pm |
|A |大写的 am/pm |AM 或 PM |
|B |Swatch Internet Time |000 到 999 |
|c |ISO 8601 日期, 时间, and 时区 |2004-06-18T09:26:55+01:00 |
|d |2-digit day of month, leading zeros |01 to 31 |
|D |Day string, three letters |Mon, Thu, Sat |
|F |Month string, full |January, August |
|g |12-hour clock hour, no leading zeros |1 to 12 |
|G |24-hour clock hour, no leading zeros |0 to 23 |
|h |12-hour clock hour, leading zeros |01 to 12 |
|H |24-hour clock hour, leading zeros |00 to 23 |
|i |Minutes with leading zeros |00 to 59 |
|I |Is daylight savings time active? |1 if yes, 0 if no |
|j |Day of month, no leading zeros |1 to 31 |
