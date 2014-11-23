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
PHP从左向右来计算语句，也就是说，先检查`$Age`是不是大于等于18，在检查是不是小于50。`&&`符号要求两遍的语句必须都为真才打印`You're in the prime of your life\n`；如果任何一句不为真，则输出`You're not in the prime of your life\n`。

和`&&`一样，`||`也用来判断条件，意思是OR（或）。只要所检查的条件当中有任何一句为真，就判断整个条件为真。

有很多方式来检查语句，`<`是小于，`<=`是小于等于，`>=`是大于等于。我们首先记忆的是`==`，意思是相等。因此，`1 == 1`为真而`1 == 2`为假。
