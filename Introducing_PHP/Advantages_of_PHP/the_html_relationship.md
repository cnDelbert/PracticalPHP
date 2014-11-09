# 同HTML的关系

当用来输出HTML内容的时候，与Perl不同，PHP代码块是嵌入在HTML当中的。最常见的PHP开合标记是`<?php`和`?>`。无需理会代码内容，先看看下面两段代码，它们分别展示了Perl代码和PHP同HTML在一起的样子(第一段是Perl，第二段是PHP)：

```perl
#!/usr/bin/perl
print "<html>\n";
print "<body>\n";
print "<p>Welcome, $Name</p>\n";
print "</body>\n";
print "</html>\n";
```

PHP代码是这么写的：

```php
<html>
<body>
<p>Welcome, <?php print $Name; ?></p>
</body>
</html>
```

正如你所看到的，PHP版本只有一行，由于页面大部分内容是HTML，因此相当容易阅读。虽然Perl有一些模块（特别是CGI.pm）的帮助，PHP仍然在可读性方面领先一大块。如果你愿意，你可以像Perl一样写PHP代码：切换到PHP没事，将所有需要输出的都`print`出来。正如你做看到的，很容易就把代码搞乱了。

除了编辑的时候清晰易读，页面大部分内容是HTML，抛弃Perl的`print`声明的另一个好处是使得在商业化的IDE，如Dreamwoeaver中进行编辑成为可能。

使用PHP而不是其他解决方案的一个关键有事是PHP代码全部在服务器端运行，客户端只接收代码返回的结果。这也就意味着用户永远不可能看到你的PHP源码，他们只能看到你想让他们看到的部分。
