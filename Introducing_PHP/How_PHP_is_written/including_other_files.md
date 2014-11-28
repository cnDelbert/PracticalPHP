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

```php
 <?php
    if (53 > 99) {
        include 'bar.php';
    }
?>
```

如果你试图包含一个不存在的文件，PHP将会产生一条警告消息。如果你写的代码中确实需要包含某个文件，可以用PHP的`require`关键字，在你要包含的文件不存在时，代码会停止并抛出`fatal error`。然而，你告诉PHP需要包含某个文件，而该文件恰好找不到的几率实在太低，所以还是尽量用`require`吧。

使用包含文件最常用的方式是引入公共函数、对象定义等。例如，如果你的站点有相同的头部的话，你可以在你的每个页面开头添加：

```php
 <?php
    include 'header.php';
    ...[snip]...
```

这样，当你想更改网站头部的时候，你只要更改一个文件就可以了。还有两个类似的关键字：`include_once`和`require_once`。它们的功能和`include`与`require`很类似，只是它们能保证只包含一次，即便你写了多次。`include_once`和`require_once`共用包含文件列表，但是由于有些操作系统（如Unix）是大小写敏感的，如果你的文件名大小写不同的话，就有可能造成重复包含，如：

```php
 <?php
    include_once 'bar.php';
    include_once 'BAR.php';
    include_once 'Bar.php';
?>
```

Unix中，PHP会尝试将其作为不同的文件进行包含。解决方案很简单：用小写英文给文件命名就好了。

注意一点，PHP如果在本地路径中找不到你试图`include`或`require`的文件，它将去查找默认包含路径。默认包含路径在`php.ini`中定义，直接作为包含路径。

> 作者说明：每次你用`include()`或`require()`包含一个文件时，PHP都对其重新编译。如果你使用了代码缓存，PHP就不必对同样的文件进行多次编译了。如果多次包含同样的文件，最好使用`include_once()`。除此之外，你可以用`get_included_files()`或`get_required_files()`来查看你已经包含了哪些文件。这两个函数的内部功能是一样的，选择一个就可以。
