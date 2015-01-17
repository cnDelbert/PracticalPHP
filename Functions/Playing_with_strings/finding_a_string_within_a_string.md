# 子字符串查找

```php
int strpos ( string haystack, string needle [, int offset])
int stripos ( string haystack, string needle [, int offset])
```

`strpos()`是`stripos()`的大小写敏感版本，返回的是子字符串在被查找字符串中第一次出现的索引位置。用代码来说明可能方便一点：

```php
<?php
    $string = "This is a strpos() test";
    print strpos($string, "a") . "\n";
?>
```

因为“This is a strpos() test”中，第一个小写字母a出现在索引为8的位置，所以上面的代码返回8。由于PHP是从0开始计算索引位置的，也就是是说`strpos()`是在字符串的第九个位置首次找到小写字母a的。

你也可以将一个单词传递给第二个参数，这样，`strpos()`就会返回这个单词第一个字母在字符串中的索引位置了。例如`strpos($string, "test")`将返回19，也就是匹配到单词的第一个字母所在的索引位置。

如果参数一中不存在参数二的字符串，`strpos()`将返回`false`。来看一下这个代码：

```php
<?php
    $string = "This is a strpos() test";
    $pos = strpos($string, "This");
    if ($pos == false) {
        print "Not found\n";
    } else {
        print "Found!\n";
    }
?>
```

如果你运行这段代码，你会发现尽管“This”在字符串的开头就出现了，但输出的却仍然是“Not found”。是因为大小写有问题吗？不是的，问题在于“This”在字符串的开头，也就是说`strpos()`将会返回0。在PHP当中，0就相当于`false`，也就是说，“找不到子字符串”和“子字符串在索引为0”的位置是一样的——这的确是个问题。

好在PHP还提供了`===`运算符，也就是一致运算。这就要求`$pos`为false，同时类型必须是boolean型才可以。如果在`$string`中找到“This”，`strpos()`将返回整型0。用`===`的话，PHP会在检查值的同时检查类型，之后会发现二者不相等：前者是整型，而后者是布尔型。

更正后的版本如下：

```php
<?php
    $string = "This is a strpos() test";
    $pos = strpos($string, "This");
    if ($pos === false) {
        print "Not found\n";
    } else {
        print "Found!\n";
    }
?>
```

下面这段代码想要匹配“is”中的“i”：

```php
<?php
    $string = "This is a strpos() test";
    $pos = strpos($string, "i");
    if ($pos === false) {
        print "Not found\n";
    } else {
        print "Found at $pos!\n";
    }
?>
```

这里的问题在于`strpos()`匹配到的“i”是“This”中的。还好，`strpos()`允许第三个参数来确定起始位置。由于“This”中的“i”的索引位置是2，我们只要让`strpos()`从索引位置3开始查找就好了。例如：

```php
<?php
    $string = "This is a strpos() test";
    $pos = strpos($string, "i", 3);
    if ($pos === false) {
        print "Not found\n";
    } else {
        print "Found at $pos!\n";
    }
?>
```

上面的代码将输出“Found at 5!”，也就是“is”中“i”的位置。
