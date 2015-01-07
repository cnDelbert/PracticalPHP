# 四舍五入

```php
float ceil ( float value)
float floor ( float value)
float round ( float value [, int precision])
```

通常情况下，我们所需要的精度要比PHP计算得到的精度小，这种情况下，我们就需要用到下面的函数了:`ceil()`、`floor()`、`round()`。

`ceil()`和`floor()`都只有要进行舍入的数字这一个参数。`ceil()`取大于传入值的最小的整数（向上取整），`floor()`取小于传入值的最大的整数（向下取整）。来看个例子：

```php
<?php
    $someval = 4.9;
    $ceiled = ceil($someval);
    $floored = floor($someval);
?>
```

执行上述代码，`$ceild`结果为5，`$floored`结果为4。

> 作者说明：`floor()`函数将浮点型转换为整型的工作方式和强制类型转换差不多，而且强制类型转换更快一点。二者的区别是在负数的处理上，`floor()`将-4.5向下取整得到-5，而强制类型转换的结果是-4、

另外一个函数是`round()`，它有两个参数：
