# 自动转义字符串

```php
string addslashes ( string source)
string stripslashes ( string source)
```

有时候你在使用单引号、双引号或斜线的时候会出现一些问题，一些数据库、文件和一些协议要求你用`\`来进行转义，变成`\'`、`\"`和`\\`。`addslashes()`这个函数只有一个参数，返回这个参数转义之后的字符串以便使用。

在php.ini中有一个选项“magic_quotes_gpc”，你可以通过它来启用“magic quotes”功能。如果启用了，PHP将对用户传入的所有数据自动调用`addslashes()`函数，总体来说还是很方便的，当然，有时候也有点小的困扰——特别是当你想用其他方式来使用变量的时候。

需要注意的是，重复调用`addslashes()`将产生越来越多的`\`：

```php
<?php
    $string = "I'm a lumberjack and I'm okay!";
    $a = addslashes($string);
    $b = addslashes($a);
    $c = addslashes($b);
?>
```

运行代码，得到的结果如下：

```text
$a: I\'m a lumberjack and I\'m okay!
$b: I\\\'m a lumberjack and I\\\'m okay!
$c: I\\\\\\\'m a lumberjack and I\\\\\\\'m okay!
```

`\`数量增长如此之快的原因，是PHP会在每次引用的时候，在每个单引号和斜线前面都加上斜线。

与`addslashed()`相对的一个函数是`stripslashes()`，用来移除对应的斜线。继续上面的代码：

```php
<?php
    $d = stripslashes($c);
    $e = stripslashes($d);
    $f = stripslashes($e);
?>
```

之后依次运行代码，得到的是：

```text
$d: I\\\'m a lumberjack and I\\\'m okay!
$e: I\'m a lumberjack and I\'m okay!
$f: I'm a lumberjack and I'm okay!
```
