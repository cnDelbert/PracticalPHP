# 字符串统计

```php
int strlen ( string source)
mixed count_chars ( string string [, int mode])
mixed str_word_count ( string string [, int format])
```

可以从三个方面对字符串及其内容进行统计。最简单也最直观的就是统计字符串里面的字符数。用`strlen()`函数就可以完成，它只接受要统计的字符串一个参数，返回字符串内的字符数。这个函数很简单，不用例子都可以说明白，但是保险起见，我们还是来看一下这个例子吧：

```php
<?php
    print strlen("Foo") . "\n"; // 3
    print strlen("Goodbye, Perl!") . "\n"; // 14
?>
```
