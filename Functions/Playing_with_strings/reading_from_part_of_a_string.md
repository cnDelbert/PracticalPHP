# 读取子字符串

```php
string substr ( string source, int start [, int length])
```

`substr()`函数允许你读取字符串的一部分，它最少需要两个参数：要处理的字符串和要读取的起始位置。这个函数的第三个参数是可选的，用来说明你想要读取的字符串的长度。下面是这个函数基本用法的示例：

```php
<?php
    $string = "Goodbye, Perl!";
    $a = substr($string, 1);
    $b = substr($string, 0);
    $c = substr($string, 5);
    $d = substr($string, 50);
    $e = substr($string, 5, 4);
    $f = substr($string, 10, 1);
?>
```

上面的代码执行之后，`$a`的值是“oodbye, Perl!”，而不是整个`$string`，因为PHP字符串的位置是从0开始计数的，而我们将1作为第二个参数传入，`substr()`就将从第二个字符开始，一直到最后的字符串赋值给`$a`了。
我们从`$string`0的位置开始复制，所以`$b`就得到了整个`$string`。
`$c`我们是从5的位置(第6个字符)开始复制，所以`$c`的值是“ye, Perl!”。
