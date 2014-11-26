# 循环嵌套

你可以直接在一个循环体中嵌套另一个循环，就像这样：

```php
 for ($i = 1; $i < 3; $i = $i + 1) {
    for ($j = 1; $j < 4; $j = $j + 1) {
        for ($k = 1; $k < 3; $k = $k + 1) {
            print "I: $i, J: $j, K: $k\n";
        }
    }
}
```

上面的代码输出：

```text
I: 1, J: 1, K: 1
I: 1, J: 1, K: 2
I: 1, J: 2, K: 1
I: 1, J: 2, K: 2
I: 2, J: 1, K: 1
I: 2, J: 1, K: 2
I: 2, J: 2, K: 1
I: 2, J: 2, K: 2
```

这种情况下用`break`就有点复杂了，因为它只跳出离它最近的循环：

```php
 for ($i = 1; $i < 3; $i = $i + 1) {
    for ($j = 1; $j < 3; $j = $j + 1) {
        for ($k = 1; $k < 3; $k = $k + 1) {
            print "I: $i, J: $j, K: $k\n";
            break;
        }
    }
}
```

这次的输出是：

```text
I: 1, J: 1, K: 1
I: 1, J: 2, K: 1
I: 2, J: 1, K: 1
I: 2, J: 2, K: 1
```

如上所示，`$k`只循环了一次就被打断了，而其他循环都循环了若干次。你可以尝试在`break`后加个数字，如`break 2`来跳出两次循环或`switch - case`语句。例如：

```php
 for ($i = 1; $i < 3; $i = $i + 1) {
    for ($j = 1; $j < 4; $j = $j + 1) {
        for ($k = 1; $k < 3; $k = $k + 1) {
            print "I: $i, J: $j, K: $k\n";
            break 2;
        }
    }
}
```

会输出

```text
I: 1, J: 1, K: 1
I: 2, J: 1, K: 1
```

这次，整个循环只执行了两次，因为`$k`内部调用了`break 2`，跳出了`$k`和`$j`的循环。如果换成`break 3`的话，将会跳出全部三个循环，继续下面的代码。

需要注意的是，`break`在`switch - case`语句和循环中都起作用，例如：

```php
 for ($i = 1; $i < 3; $i = $i + 1) {
    for ($j = 1; $j < 4; $j = $j + 1) {
        for ($k = 1; $k < 3; $k = $k + 1) {
            switch($k) {
                case 1:
                    print "I: $i, J: $j, K: $k\n";
                    break 2;
                case 2:
                    print "I: $i, J: $j, K: $k\n";
                    break 3;
            }
        }
    }
}
```

`break 2`跳出了`switch - case`和`$k`循环，而`break 2`跳出了`switch - case`和两层循环。如果想要从`switch - case`中完全跳出循环，则需要`break 4`了。
