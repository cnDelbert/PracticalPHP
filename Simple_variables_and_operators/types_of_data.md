# 数据类型



大多数数据类型可以同其他类型进行自由转换，因此PHP是*弱类型*的。下面这段代码应该能够很好地阐释这一点：

```php
<?php
  $mystring = "12";
  $myinteger = 20;
  print $mystring + $myinteger;
?>
```
