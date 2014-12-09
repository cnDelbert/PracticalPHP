# 常量

如果你为了方便，在脚本中设了一个变量，之后不再进行改变的话，那么你就应该用一个常量。常量和变量一样，只是它们一旦被定义，就不能取消或更改——正如“常量”这个名字一样。在很多语言中，常量要比变量快，所以才被推荐使用，在PHP中却不是这样的。虽然使用常量要比变量稍微快一点，但是主要原因还在下面：常量前面不用添加美元符号，易于同其他变量进行区别；此外，常量自动是全局变量，比变量的作用范围要大。

要设置常量，需要用`define()`函数，它需要两个参数，第一个是要设置的常量名，第二个是要常量将要被赋予的值。例如，下面的例子是将`time()`函数的返回值赋值给常量`CURRENT_TIME`，并将其打印输出：

```php
define("CURRENT_TIME", time());
print CURRENT_TIME;
```

注意，我们设置的不是`$CURRENT_TIME`，也不是`Current_Time`，常量同变量一样都是大小写敏感的，但是却不用美元符号开头。当然，你也可以给`define()`传递第三个参数`true`将常量设置为大小写不敏感的：

```php
define("CURRENT_TIME", time(), true);
print Current_TiMe;
```

对常量而言，有两个很有用的函数，分别是`defined()`和`constant()`。`defined()`函数相当于变量里面的`isset()`，如果传递进去的常量被定义的话则返回`true`，例如：

```php
define("CURRENT_TIME", time(), true);
if (defined("CURRENT_time")) {
    /// etc
}
```

注意，传递给`defined()`的常量名需要加引号。

最后，`constant()`看起来可能有些累赘，但是它返回常量的值这点却是很有用的。我知道你可能想说，像`print MY_CONSTANT;`这样直接打印出来不久行了吗？但是，万一你不知道常量的名呢？如果你用的是变量，你可以使用**可变变量**，但是在常量的情况下是无效的，因此才有了`constant()`这个函数。

```php
 <?php
    define("Current_Time", time(), true);
    $somevar = "CURRENT_TIME";
    print constant($somevar);
?>
```
