# 读取当前时间

```php
int time ( )
mixed microtime ( [bool get_as_float])
```

PHP有一个以Unix时间戳格式获取当前时间的基本函数：`time()`。`time()`没有参数，以Unix时间戳格式返回当前时间。下面是一个例子：

```php
<?php
    print time();
    $foo = time();
    print $foo;
?>
```

正如你所看到的，我们可以直接输出`time()`的返回值，也可以将其保存到变量之后，输出变量的值。这两种操作的结果是一致的。
