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

在上面的变量当中，最重要的是`HTTP_REFERER`和`HTTP_AGENT`，通过他们，你可以知道你访客的一些信息，并做出相应的动作：

```php
<?php
    if (isset($_SERVER['HTTP_REFERER'])) {
        print "The page you were on previously was {$_SERVER['HTTP_REFERER']}<br />";
    } else {
        print "You didn't click any links to get here<br />";
    }
?>

<a href="refer.php">Click me!</a>
```

当你在浏览器当中手动输入URL的时候，由于`HTTP_REFERER`未设置，因此会输出“You didn't click any links to get here”。然而，如果你通过下面的“Click me!”点击重新加载了该页面，就会显示不同的东西了。虽然这样显得有点滑稽，`HTTP_REFERER`通常用来判断访客来源，不管你是不是使用这个来显示“对不起，由于您来自外站，不能直接下载本站文件”或“欢迎来自Google的朋友”，这都提供了一种思路。

`$_SERVER`当中的`PATH_INFO`元素很有意思，因为你可以在加载代码之后获取到路径信息，例如：

```php
 <?php
    if (isset($_SERVER['PATH_INFO'])) {
        print "The page you requested was {$_SERVER['PATH_INFO']}<br />";
    } else {
        print "You didn't request a page<br />";
    }
?>
```

保存为`pathinfo.php`之后放到网站目录下，从浏览器当中加载，你应该看到“You didn't request a page”。现在，在地址栏的“pathinfo.php”后加入一个路径信息，例如`www.yoursite.com/pathinfo.php/path/to/some/file.txt`，回车后，就能看到后面的路径信息加载出来了。这个在在线文件系统当中很常用，在URL中告诉脚本你想要哪个文件。

> 作者说明：由于参考信息是浏览器设置的，也就意味着这个很容易被假冒。一个例子就是更改你电脑上的“hosts”文件，将随便一个域名指向本地，例如example.com，之后，黑客从他的电脑上设置的链接跳转到你的脚本，你的脚本就会提示他来自example.com。所以，作为一个好的开始，你不应该依赖并信任`HTTP_REFERER`中的值。
