# 自动类型转换

由于PHP是弱类型的，当有需要的时候，会自动从一种类型转换为另一种类型。但是自动类型转换的时候可能出现无意义的转换，或者出现不想要的结果。例如，在一个数组上`print`一个数组的时候，它并不会自动将数组的每个元素转换为字符串输出。将对象视为字符串有其自己的行为，但现在来说并不重要。

PHP的自动类型转换有时候会产生一些想不到的结果。这并不是由于PHP的语法不好，更多的是你的代码需要更显式的转换。例如，从布尔型转换为字符串型时，`true`会产生1，而`false`会产生空。例子如下：

```php
 <?php
    $bool = true;
    print "Bool is set to $bool\n";
    $bool = false;
    print "Bool is set to $bool\n";
?>
```

输出如下

```text
Bool is set to 1
Bool is set to
```

如上所示，`false`并没有打印出0，而是什么都没打印出来，导致输出错误。为了解决这个问题，我们应该告诉PHP这个变量要转换成什么值。上面的例子是要将布尔类型转换为整型，从而`true`输出1，`false`输出0.

```php
 <?php
    $bool = true;
    print "Bool is set to $bool\n";
    $bool = false;
    print "Bool is set to ";
    print (int)$bool;
?>
```

这次就输出了你想要的1和0了。
