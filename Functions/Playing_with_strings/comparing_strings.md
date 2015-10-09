# 字符串比较

```php
int strcmp ( string str1, string str2)
int strcasecmp ( string str1, string str2)
```

`strcmp()`同其大小写敏感的版本`strcasecmp()`可以对字符串进行快速比较，返回二者是否相等；如果不相等，则可以比较谁先谁后。这两个函数都将两个字符串作为其传入参数，按照英文字母表的顺序进行比较，如果第一个字符串先出现，则返回`-1`；如果第二个字符串先出现，则返回`1`；如果两个字符串相等，则返回`0`。

```php
<?php
    $string1 = "foo";
    $string2 = "bar";
    $result = strcmp($string1, $string2);

    switch ($result) {
        case -1: print "Foo comes before bar"; break;
        case 0: print "Foo and bar are the same"; break;
        case 1: print "Foo comes after bar"; break;
    }
?>
```