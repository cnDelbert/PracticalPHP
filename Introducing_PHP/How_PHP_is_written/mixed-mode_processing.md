# 混合处理模式

PHP的一个关键理念就是你可以随时开关PHP处理模式，你甚至可以在代码块中进行处理。下面是一段简单的PHP代码：

```php
 <?php
    if ($foo == $bar) {
        print "Lots of stuff here";
        print "Lots of stuff here";
        print "Lots of stuff here";
        ...[snip]...
        print "Lots of stuff here";
        print "Lots of stuff here";
    }
?>
```

如上所示，上面的打印语句只有当`$foo`和`$bar`相等的时候才执行。所有的输出都是由`print`语句完成的。PHP允许你在`if`的代码语句执行的时候跳出PHP模式，就像这样：

```php
 <?php
    if ($foo == $bar) {
?>
    Lots of stuff here
    Lots of stuff here
    Lots of stuff here
    ...[snip]...
    Lots of stuff here
    Lots of stuff here
<?php
    }
?>
```

中间的`Lots of stuff here`只会在`$foo`和`$bar`相等的时候才会输出，尽管我们这里已经跳出了PHP模式。之后重新进入PHP模式，`if`语句关闭，代码继续执行。这样使得整体具有更好的可读性。
