# 预设变量

在你开始写你的代码之前，PHP已经给你定义了一些关于服务器、关于环境以及来自访问者请求的变量。这些都存储在超全局变量当中，你可以通过`phpinfo()`函数将其输出。

下面是保存在`$_SERVER`当中最常使用的变量：

|变量名|取值|
|:-:|:-:|
|`HTTP_REFERER`|如果用户通过点击链接访问当前页面，则为链接过来的url地址；如果用户直接访问，则为空值。|
|`HTTP_USER_AGENT`|用户浏览器设定的值。|
|`PATH_INFO`|网址中文件名后面部分传递的数据。|
|`PHP_SELF`|当前文件名。|
|`REQUEST_METHOD`|GET或POST。|
|`QUERY_STRING`|GET请求中问号之后的所有字符串。|

> 注意是`HTTP_REFERER`而不是`HTTP_REFERRER`。**referer**正确英语拼法是**referrer**,由于早期HTTP规范的拼写错误,为了保持向后兼容而将错就错。

在上面的变量当中，最重要的是`HTTP_REFERER`和`HTTP_AGENT`，