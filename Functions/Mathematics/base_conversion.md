# 进制转换

```php
int bindec ( string binary_string)
string decbin ( int number)
string dechex ( int number)
string decoct ( int number)
int hexdec ( string hex_string)
int octdec ( string octal_string)
string base_convert ( string number, int from_base, int to_base)
```

进制是用来描述给定的数字系统的。在b进制中，我们使用0，1，2，……，b-1作为数字。也就是说，在十进制中，我们用0, 1, 2, 3, 4, 5, 6, 7, 8, 9，在八进制中，我们使用0, 1, 2, 3, 4, 5, 6, 7来作为数字。你对十进制应该已经很熟悉了，我们平时计算几乎都是用十进制来进行的。

还有三种进制用得也比较多：二进制，八进制和十六进制。在二进制中，我们只用0和1；在十六进制中，我们用0-9, A(10), B(11), C(12), D(13), E(14), F(15)来做数字。

为了说明问题，以39为例来说一下不同进制：

- 100111 二进制
- 47 八进制
- 39 十进制
- 27 十六进制

从十六进制转换为二进制，或从十进制转换为八进制看起来并不是那么容易，好在PHP已经内置了一些函数来帮我们完成转换：`bindec()`、`decbin()`、`decoct()`、`hexdec()`、`otcdec()`。想知道这些函数做了什么，只看函数名就可以了：`bindec()`从bin(ary)二进制转换为dec(imal)十进制；`dechex()`从dec(imal)十进制转换为hex(adecimal)十六进制。

这几个函数只有一个参数，就是要进行转换的数字。来看几个例子：

```php
<?php
    print decbin(16); // 10000
    print dechex(232); // e8
    print hexdec(e8); // 232
?>
```

十进制与其他进制的转换是很方便，但是我想从二进制转换为十六进制呢？很明显，要PHP给出任意两种进制直接转换的函数是不实际的，但好在有这么一个函数：`base_convert()`。

`base_convert()`有三个参数：要转换的数字，转换之前的进制，转换之后的进制。来看下面两行代码：

```php
<?php
    print decbin(16);
    print base_convert(16, 10, 2);
?> 
```

后一种方法用通俗的语言来说就是“将16从十进制转换为二进制”。使用`base_convert()`的好处就是我们可以直接从二进制转换为十六进制了，甚至从八进制转换为十二进制、十六进制转换为二十进制都称为可能。

另外一个就是，大于9的数字使用拉丁字母来代替的。因此，在十六进制中，我们用0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F，到了二十进制，我们就用0, 1, 2, 3, 4, 5, 6, 7, 8, 9, A, B, C, D, E, F, G, H, I, J。问题来了，只用0~9和26个字母，我们所能表示的最大的进制是三十六进制。从技术上来说，如果英文字母的大小写分别来算的话，可以支持到六十二进制，但目前PHP还不支持，如果你尝试使用大于三十六进制的话，PHP会产生错误。

> 作者说明：MIME（多用途互联网邮件扩展）使用的base64是用ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/做元素的。

这是其他一些用`base_convert()`进行进制转换的例子，你可以自己试一试：

```php
<?php
    print base_convert(556, 10, 2); // 1000101100
    print base_convert(556, 10, 8); // 1054
    print base_convert(556, 10, 20);    // 17g
    print base_convert(556, 10, 36);    // fg
?>
```

如上所见，进制基数越大，用来表示的数字越短。
