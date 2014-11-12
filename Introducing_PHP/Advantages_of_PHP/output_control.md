# 输出控制

在你输出你的内容时，PHP提供了巨大的灵活性。平时使用的时候，PHP都是通过`<?php`和`?>`嵌入在HTML当中的。

如果需要的话，你可以调转你输入的方式，将整个文件作为PHP代码，在其中输出HTML代码。回到之前说过的那个例子，我们可以像Perl语言一样从PHP中输出HTML代码：

```php
<?php
  print "<html>\n";
  print "<body>\n";
  print "<p>Welcome, $Name</P>\n";
  print "</body>\n";
  print "</html>\n";
?>
```

`print`是向客户端输出一段应引号围起来的字符的一个简单函数。`\n`意思是“在源码中开始新的一行”，为的是使源代码更加整洁。
