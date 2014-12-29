# 处理变量

```php
bool isset ( mixed var [, mixed var [, mixed ...]])
void unset ( mixed var [, mixed var [, mixed ...]])
bool empty ( mixed var)
```

有三个很基本的函数来帮你使用变量：`isset()`、`empty()`和`unset()`。`isset()`和`empty()`看起来完全相反，但实际上二者相当不同：如果传入的唯一一个变量在脚本中有对应的值，`isset()`返回真；`empty()`仅接受一个变量，当变量的值为`false`时返回真。这不是一回事。

为了说明二者的不同，来看这个例子：假设`$foo`已经被设置为`false`了，由于`$foo`是一个有值的变量，`isset()`会返回true；而`empty()`则因为`$foo`的值为false而返回true。要检查“变量未设置”，需要用`not`操作符`!`，就像`if(!isset($foo))`一样。

`unset()`将完全移除一个已设变量，再用`isset()`检查的话，将会返回false。这个变量可以在之后的代码重新创建。如果想要删除一个变量的话，用`unset()`。
