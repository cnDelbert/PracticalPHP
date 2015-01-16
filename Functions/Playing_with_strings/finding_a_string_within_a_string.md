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
