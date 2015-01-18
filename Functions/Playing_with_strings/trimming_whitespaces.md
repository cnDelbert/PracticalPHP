# 移除空白

```php
string trim ( string source [, string charlist])
string ltrim ( string source [, string charlist])
string rtrim ( string source [, string charlist])
```

`trim()`是一个可以从字符串任意一边去掉空白的函数。空白指的是空格、换行符和制表符(Tab)。如果你把字符串“ This is a test ”传递给`trim()`，它将返回“This is a test”：除了两边的空白被移除之外，字符串还是原来的字符串。

你可以给`trim()`传递一个可选参数，用来明确说明你想要移除掉的字符。例如，你传递给`trim()`的第二个参数是“ tes”（前面有一个空格），将返回“This is a”——“test”这个单词和空格都被移除掉了，但是开头大写的T没变。这是因为`trim()`是大小写敏感的。

`trim()`有两个变体函数：`ltrim()`和`rtrim()`，它们分别做的事就是从左边或从右边进行移除。来看个例子：

```php
<?php
    $a = trim(" testing ");
    $b = trim(" testing ", " teng");
    $c = ltrim(" testing ");
?> 
```

`$a`返回“testing”，`$b`返回“sti”，`$c`返回“testing ”。
