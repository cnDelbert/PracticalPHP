# 格式化输出数字

```php
string number_format ( float number [, int decimal_places])
string number_format ( float number, int decimal_places, string decimal_point, string thousands_seperator)
```

`number_format()`是个相当有用的函数，它最少需要要格式化输出的数字一个参数，返回按千位组成组的数字。`number_format()`有两个函数原型，你可以传入一个、两个或三个参数：当你传入一个或两个参数的话，用的是第一个原型；当传入四个参数的时候，使用的是第二个原型。

如果你传给`number_format()`的是“1234567”，返回的是“1,234,567”。默认情况下，`number_format()`将自动对分数进行舍入，例如将1234567.89变为1,234,568。当然，你可以通过传入第二个参数(小数点位置)来改变这种情况，第三个参数允许你选择你使用的小数点，第四个参数可以设定为你想要的千分位的分隔符。写出来就是这样：

```php
<?php
    $num = 12345.6789;
    $a = number_format($num);
    $b = number_format($num, 3);
    $c = number_format($num, 4, ',', '.');
?>
```

运行代码之后，`$a`是“12,346”，`$b`是“12,345.679”，`$c`是“12.345,6789”（用逗号表示小数点，用点号作为千分位分隔符，东欧风格）。

没错，`number_format()`在购物篮等页面用来格式化金额的时候是非常方便的，当然，在表示大额数字的时候，有了千分位，也便于识读。
