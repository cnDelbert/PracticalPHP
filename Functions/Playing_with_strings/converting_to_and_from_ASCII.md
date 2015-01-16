# ASCII转换

```php
string chr ( int ascii)
int ord ( string string)
```

ASCII(American Standard Code for Information Interchange，美国信息交换标准代码)用0~255的数字来表示对应的字符，通常在计算机领域使用。例如，74是`J`，106是`j`，123是`{`，32是` `(空格)。要从正常的文本转换为ASCII码的话，可以用`chr()`函数，它只接受一个参数，就是要被转换的ASCII码值，返回对应的字符。而`ord()`刚好相反，输入字符，返回ASCII码值。

例如：

```php
<?php
    $mystr = "ASCII is an easy way for computers to work with strings\n";

    if (ord($mystr{1}) == 83) {
        print "The second letter in the string is S\n";
    } else {
        print "The second letter is not S\n";
    }

    $letter = chr(109);

    print "ASCII number 109 is equivalent to $letter\n";
?>
```

应该输出：

```text
The second letter in the string is S
ASCII number 109 is equivalent to m
```
