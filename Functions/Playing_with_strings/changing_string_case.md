# 大小写转换

```php
string strtoupper ( string source)
string strtolower ( string source)
string ucfirst ( string source)
string ucwords ( string source)
```

`strtoupper()`是改变字符串大小写函数家族中的一员，它只有一个参数，将字符串中的字符全部变为大写字母后返回。与之相对的是`strtolower()`，将字符串全部变为小写。`ucfirst()`将字符串的第一个字母变为大写，而`ucwords()`将字符串中每个单词的首字母变为大写。他们都只有一个参数，返回改变后的结果：

```php
<?php
    $string = "i like to program in PHP";
    $a = strtoupper($string);
    $b = strtolower($string);
    $c = ucfirst($string);
    $d = ucwords($string);
    $e = ucwords(strtolower($string));
?>
```

上面每个变量的结果都有所不同：

- `$a` -- `I LIKE TO PROGRAM IN PHP`
- `$b` -- `i like to program in php`
- `$c` -- `I like to program in PHP`
- `$d` -- `I Like To Program In PHP`
- `$e` -- `I Like To Program In Php`
