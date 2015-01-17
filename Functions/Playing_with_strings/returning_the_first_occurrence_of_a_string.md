# 从字符串第一次出现的位置开始返回

```php
string strstr ( string haystack, string needle)
string stristr ( string haystack, string needle)
```

`strstr()`和它的大小写不敏感版本`stristr()`使用起来都非常简单，它们返回字符串（参数一）中子字符串（参数二）第一次出现到结尾的所有字符。下面这个例子用来匹配一个网址 http://www.example.com/mypage.php ，返回从 www 到结尾的字符串：

```php
<?php
    $string = "http://www.example.com/mypage.php";
    $newstring = strstr($string, "www");
?>
```

自己试一试，你会发现`$newstring`里面的内容正如你所期望的：www.example.com/mypage.php 。
