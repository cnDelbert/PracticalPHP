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
