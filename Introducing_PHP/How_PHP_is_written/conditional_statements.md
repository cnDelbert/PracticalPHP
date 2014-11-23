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

不知道你有没有注意到我所说的。当条件语句为真时，程序执行`if`中的代码，否则就执行`else`中的代码。PHP不会同时执行两种动作。

另外，PHP还遵循“短路”规则，这样PHP将会尝试尽量少的条件，也就是说，当其能够确定条件的真假时，就不再继续向下检查条件了。例如：

```php
if ($Age > 10 && $Age < 20)
```

如果`$Age`等于8，第一个条件(`$Age > 10`)就通不过，PHP也就不会将其同20进行比较大小。也就是说，如果两个条件分别是检查变量是否被赋值和变量是否等于某个特定值的话，如果变量没有被赋值，PHP就会进行短路操作，跳过检查该变量是否等于某值。这样有个好处，因为如果将未赋值的变量同某个值进行比较，PHP就会报错。

`if`条件的另外一种补充是`elseif`语句，允许将判断条件进行细化：

```php
 <?php
    if ($Age < 10) {
        print "You're under 10";
    } elseif ($Age < 20) {
        print "You're under 20";
    } elseif ($Age < 30) {
        print "You're under 30";
    } elseif ($Age < 40) {
        print "You're under 40";
    } else {
        print "You're over 40";
    }
?>
```

当然，你也可以用多个`if`语句来达到同样目的，只是这样更加整洁。不足之处就是系统需要对`$Age`进行重复的检查。

如果你要执行的代码只有一行，你可以不用花括号。用不用花括号在速度上没有区别，通常出于可读性的考虑来选择是否使用。

下面这两段代码是一样的：

```php
 if ($foo) {
    echo $bar;
}

if ($foo) echo $bar;
```
