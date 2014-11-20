# 转义符

PHP中，你可以通过`\`使得在双引号中输出对应符号。

转义符，就是通过`\`加上一个字母或符号，来达到输出相应字符的目的。例如，你要输出`"And then he said, "That is amazing!", which was true"`，由于其中有双引号，所以你需要用到转义符。下面是PHP当中的转义符列表：

|符号|说明|
|:---:|:---:|
|`\"`|输出双引号，不作为字符串的结束|
|`\'`|输出单引号，不作为字符串的结束|
|`\n`|输出换行符|
|`\t`|输出制表符|
|`\r`|输出回车(很少使用)|
|`\$`|输出美元符号，不作为变量的开头|
|`\\`|输出斜线，不作为转义符|

下面这段代码说明了转义符的使用：

```php
 <?php
    $MyString = "This is an \"escaped\" string";
    $MySingleString = 'This \'will\' work';
    $MyNonVariable = "I have \$zilch in my pocket";
    $MyNewline = "This ends with a line return\n";
    $MyFile = "c:\\windows\\system32\\myfile.txt";
?>
```

在使用Windows格式的路径时，特别容易忘记使用转义符。只要写代码的时候多写一个`\`就好了。你可以输出`$MyFile`看一下：

```text
c:\windows\system32\myfile.txt
```

转义符只是为了使PHP能够正确读入字符串而是用的。一旦读入了字符串，数据就会被转换成应有的格式。

同时，转义符只在双引号当中有用，如果你输入`'Hello!\n\n\n'`，PHP会原样输出`\n\n\n`而不是换行符。同时应该注意，转义符是一个字符，只是我们通过键盘输入的时候需要输入两个字符，因为有些字符键盘是无法输入的。
