# 条件语句

PHP允许根据条件来选择执行的语句。条件可以是单独的一条，也可以是多个条件复合起来的。来看一个例子：

```php
 <?php
    $Age = 20;
    if ($Age < 18) {
        print "You're young - enjoy it!\n";
    } else {
        print "You're not under 18\n";
    }

    if ($Age >= 18 && $Age < 50) {
        print "You're in the prime of your life\n";
    } else {
        print "You're not in the prime of your life\n";
    }

    if ($Age >= 50) {
        print "You can retire soon - hurrah!\n";
    } else {
        print "You cannot retire soon :( ";
    }
?>
```
