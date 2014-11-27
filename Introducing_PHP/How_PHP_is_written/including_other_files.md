# 包含其他文件

在PHP中，其中一个最基本的操作就是在一个文件中包含另一个文件，这样就可以共享函数功能。这个通过给`include`传递要包含的文件名来实现。

假设下面是`foo.php`中的代码：

```php
 <?php
    print 'Starting foo\n';
    include 'bar.php';
    print 'Finishing foo\n';
?>
```

这是`bar.php`中的代码：

```php
 <?php
    print 'In bar\n';
?>
```

PHP将会载入`bar.php`并读入其中的内容，并用其替换掉`foo.php`中`include 'bar.php'`一行。之后，`foo.php`实际是：

```php
 <?php
    print 'Starting foo\n';
    print 'In bar\n';
    print 'Finishing foo\n';
?>
```

如果你对为什么只把`include 'bar.php'`一句话引入，而没有引入开闭合标记，那是因为当PHP包含文件的时候，先跳出PHP模式，然后立即进入PHP没事。因此，同`bar.php`合并了的`foo.php`实际应该是：

```php
 <?php
    print 'Starting foo\n';
?>
<?php
    print 'In bar\n';
?>
<?php
    print 'Finishing foo\n';
?>
```

虽然作用一样，但是有点难以阅读。

有一点需要注意，PHP只在包含文件确实执行到的情况下才包含文件，因此，像下面的代码，`bar.php`实际是没有被包含进来的：
