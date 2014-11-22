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

- 你可以使用任何字符来表示字符串的界限，`EOT`只是一个例子。
- 在分隔符之前你需要用`<<<`告诉PHP你要进入定界符模式。
- 如果你要用美元符号的话，需要用转义符，否则，PHP将尝试进行变量替换。
- 你可以在文本当中使用作为分隔符的文字，但是不能在单独一行的开头使用。
- 在整个文本结束的时候，键入分隔符后，用分号表明这个语句的结束。

如果没有定界符，输入复杂的字符串很复杂，也很麻烦。虽然你可能想多用定界符，但定界符实际上并不常用，将来你会遇到不用定界符的乱七八糟的代码。
