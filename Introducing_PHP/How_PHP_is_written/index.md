# 怎样写PHP

如前所述，PHP是嵌入在HTML代码当中的。默认情况下，PHP模式是未启用的。除非启用PHP模式，否则所有脚本当中的文字都被认为是HTML。

这种PHP代码元素被称为“代码孤岛”，一块一块的PHP代码在HTML的海洋当中。当然，并不是说PHP代码无法影响HTML，后面我们将会讲到。

PHP脚本通常保存在扩展名为`.php`的文件当中。当web服务器收到请求，要求发送一个`.php`结尾的文件时，服务器首先将其传递给PHP解释器，在将结果返回给用户之前执行PHP代码。每行PHP代码都叫做一个语句，结尾的分号表明这是一个完整的语句。

PHP当中的变量，也就是储存数据的对象，都是以`$`开头，后面紧接着是字母或下划线，之后是数字、字母和下划线的组合。也就是说，**`$`后不能跟数字**，这个要注意一下。下面是合法和非法变量的示例：

|变量|是否正确|
|:------:|:-----:|
|`$myvar`|正确|
|`$Name`|正确|
|`$_Age`|正确|
|`$__AGE__`|正确|
|`$91`|错误，数字开头|
|`$1Name`|错误，数字开头|
|`$Name91`|正确|
|`$_Name91`|正确|
|`$Name's`|错误，只有数字、字母、下划线可以在变量名中出现|

变量是大小写敏感的，也就是说`$FOO`，`$foo`，`$Foo``$fOO`都不同。

给变量赋值就是用等号将你要赋值的变量和变量的值连接起来。下面这段简单的代码掩饰了怎样给变量赋值和怎样输出变量，注意一下行末的分号：

```php
 <?php
    $name = "Paul";
    print "Your name is $name\n";
    $name2 = $name;
    $age = 20;
    print "Your name is $name2, and your age is $age\n";
    print 'Goodbye, $name!\n';
?>
```

正如你所看到的，我们将`$name`的值设置为`Paul`，PHP在`Your name is `后输出变量的值，也就是将变量替换为变量的值，因此，第一次打印输出的结果是`Your name is Paul`。

> 作者说明：技术上来说，“变量替换”应该叫做“变量插值”。

我们将`$name2`的值设置为`$name`，相当于将`$name`的信息全部给了`$name2`，因此`$name2`本身也被设置为`Paul`。我们又把`$age`设置为整型的`20`，我们第二次打印语句输出了PHP进行变量替换后的结果。

最后一次打印没有按照我们的期望输出，它输出的是：

```text
Goodbye, $name!\n
```

这是因为PHP不会将单引号内的变量进行替换，也不会对转义符进行替换。只有当我们使用双引号的时候，PHP才会进行变量的替换。使用单引号的时候，PHP会鸳鸯输出`$name`。

在继续进行之前，我们还要注意一点。有时候你想给你变量的值加上一个字符什么的，但是你会发现你要加上的字符成了变量的一部分，就像下面这样：

```php
 <?php
    $food = "grapefruit";
    print "These $foods aren't ripe yet.";
?>
```

你想要输出`These grapefruits aren't ripe yet.`，但是PHP却试图获取`$foods`而不是`$food`的值。当然，`$foods`是不存在的，PHP将这个地方留空了。怎么解决呢？我们需要使PHP知道什么地方是变量，有两种方式：

```php
 <?php
    $food = "grapefruit";
    print "These ${food}s aren't ripe yet.";
    print "These {$food}s aren't ripe yet.";
?>
```

两种方式都能达到目的。花括号告诉PHP变量的位置。当然，如果是下面这样的情况，不需要对代码进行更改：

```php
 <?php
    $food = "grapefruit";
    print "This $food's flavour is bad.";
?>
```

因为变量名中不允许使用撇号`'`，所以PHP能正确识别。如果你想在PHP中避免这种形式的变量替换，你可以像下面这样：

```php
 <?php
    $food = "grapefruit";
    print "These " . $food . "s aren't ripe yet.";
?>
```
