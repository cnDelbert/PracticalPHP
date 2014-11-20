# 定界符

为了能够在PHP中输入大量文字而不是用转义符，人们发明出了定界符。定界符可能一开始有点难以理解，学会之后是很有用处的。简单来说，定界符就是允许你自己定义除了单双引号之外的字符串的边界。例如，我们下面使用`EOT`(End Of Text)作为分隔符。在遇到下一个`EOT`之前，我们可以在文字中随便使用单双引号。

实际使用定界符的时候，要注意字符串的分隔符需要自己单独一行，也就是说，在它前后都不能加空格或tab。

来看一下例子：

```php
 <?php
$mystring = <<<EOT
    This is some PHP text.
    It is completely free
    I can use "double quotes"
    and 'single quotes',
    plus $variables too, which will
    be properly converted to their values,
    you can even type EOT, as long as it
    is not alone on a line, like this:
EOT;
?>
```

需要对定界符和上面的例子再说几句：

- 
