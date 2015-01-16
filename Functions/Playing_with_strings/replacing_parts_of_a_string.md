# 字符串替换

```php
mixed str_replace ( mixed search, mixed replace, mixed source [, int &count])
mixed str_ireplace ( mixed search, mixed replace, mixed source [, int &count])
```

接下来我们来看`str_replace()`，这个函数用来替换字符串的部分或全部。`str_replace()`最少需要三个参数：要查找的字符串，要替换成的字符串，要进行处理的字符串。还有一个可选参数，当给定一个变量时，这个变量将被赋值为替换的次数。

通过`str_replace()`可以很方便地进行字符串的替换：

```php
<?php
    $string = "An infinite number of monkeys";
    $newstring = str_replace("monkeys", "giraffes", $string);
    print $newstring;
?>
```

运行上面的代码后，`$newstring`会输出“An infinite number of giraffes”，简单吧。来看一下下面这段代码：

```php
<?php
    $string = "An infinite number of monkeys";
    $newstring = str_replace("Monkeys", "giraffes", $string);
    print $newstring;
?>
```

这次，`$newstring`没有像上面那样输出“An infinite number of giraffes”，而是原封不动地输出了“An infinite number of monkeys”。这是因为`str_replace()`查找的字符串是“Monkeys”而不是“monkeys”，而PHP对大小写是敏感的。

有两种方法处理这个问题：要么把M换成m，要么用大小写不敏感的`str_replace()`版本——`str_ireplace()`。

```php
<?php
    $string = "An infinite number of monkeys";
    $newstring = str_ireplace("Monkeys", "giraffes", $string);
    print $newstring;
?>
```

这次，`$newstring`输出的是“An infinite number of giraffes”了。而且，现在PHP也可以同时匹配“Monkeys”、“monkeys”、“MONKEYS”了。

当使用第四个参数的时候，PHP将会将其替换成字符串被替换的次数。来看这个例子：

```php
<?php
    $string = "He had had to have had it.";
    $newstring = str_replace("had", "foo", $string, $count);
    print "$count changes were made.\n";
?>
```

由于PHP将三个“had”替换为“foo”，因此输出“3 changes were made.”。
