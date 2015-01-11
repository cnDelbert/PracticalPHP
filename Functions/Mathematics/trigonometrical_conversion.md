# 三角函数转换

```php
float sin ( float value)
float cos ( float value)
float tan ( float value)
float asin ( float value)
float acos ( float value)
float atan ( float value)
float deg2rad ( float value)
float rad2deg ( float value)
```
内置的数学函数基本都是从一个值转换为另一个值，在数学课本中都有介绍。利用它们，你可以计算正余弦、对数、指数等。同样也有一些函数来进行不同进制的转换，如从十进制转换到二进制，从二进制转换为十六进制等。为了方便阅读，我将转换分为三个子类，本节只讲三角函数的转换。

计算基本的三角函数值，如正弦、余弦、正切只要分别调用`sin()`、`cos()`和`tan()`就可以了，反正弦、反余弦、反正切则分别是`asin()`、`acos()`、`atan()`。上述六个函数都只有一个参数，前三个函数的是要计算的弧度值，后三个输入的是前三个得到的结果。

弧度是角度值乘上数学常量π除以180得到的值。在PHP中，你可以直接调用`deg2rad()`来快速完成上述转换。

下面是几个函数使用的例子：

```php
<?php
    $sin1 = sin(10);
    $sin2 = sin(deg2rad(80));
    $cos1 = cos(89);
    $cos2 = cos(deg2rad(9));
?>
```

如上所述，函数`asin()`、`acos()`、`atan()`执行的是`sin()`、`cos()`和`tan()`的相反操作。也就是说，如果你对一个数执行`atan()`，再将结果执行`tan()`，你最终将得到最开始的数：

```php
<?php
    $sin1 = sin(deg2rad(80));
    $asin1 = rad2deg(asin($sin1));
?>
```

在上面的代码中，`$asin1`最后为80。没错，`rad2deg()`与`deg2rad()`也是相反的，它将弧度转换为角度。现在我们将代码变一下：

```php
<?php
    $sin1 = sin(deg2rad(80));
    print $sin1 . "\n";
    $asin1 = rad2deg(asin(XXXXX));
    print $asin1;
?>
```

在我标出`XXXXX`的地方填入输出的`$sin1`的值。例如我得到了`0.98480775301221`，我就把第三行的`XXXXX`改为`0.98480775301221`并检查输出。如果你用的是PHP的默认设置的话，你最后的输出可能是`80.000000000001`而不是80。这是为什么呢？

好吧，在`php.ini`这个文件中搜索`precision`（精度）这个词，默认被设置为14。也就是说，不管你用多高的精度进行存储，PHP默认都会使用14位的精度来显示浮点数。这也就是说我们得到的输出`0.98480775301221`是由真实值四舍五入得来的，我们再将这个四舍五入得到的数放回原程序就会产生差异。这同样也解释了为什么脚本直接运行的话会得到80，因为PHP传给`asin()`的是没有进行过舍入的值。
