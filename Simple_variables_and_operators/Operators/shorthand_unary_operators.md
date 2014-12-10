# 组合操作符

> Delbert说明：本章英文标题为Shorthand Unary Operators，意为速记一元操作符，Delbert翻看[文档](http://php.net/manual/zh/language.operators.assignment.php)，比较恰当的翻译为组合|复合操作符|运算符。

`=`操作符的特别之处在于你可以将其同其他操作符进行结合。例如，`>=`意为大于等于，你也可以将其同上一章节中
前六个操作符进行组合形成`+=`、`-=`、`*=`、`/=`和`.=`（少了不等号`!=`），这些都是一元操作符，例如：

```php
<?php
    $somevar = 5;
    $somevar += 5; // $somevar is now 10
    $somevar *= 2; // $somevar is now 20
    $somevar .= " elephants"; // $somevar is now "20 elephants"
?>
```

这些一元操作符很方便记忆，也很方便阅读。
