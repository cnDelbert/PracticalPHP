# 特殊的循环关键字

在循环当中，你会用到两个特殊的关键字：`break`和`continue`。我们之前已经在`switch - case`当中用过`break`了，用来跳出`switch - case`块，在循环中的作用也是一样的。`break`用来跳出循环，继续执行下面的代码，而`continue`用来跳过当前循环中的剩余代码，直接进入下一次循环。

例如：

```php
 <?php
    for ($i = 1; $i < 10; $i = $i + 1) {
        if ($i == 3) continue;
        if ($i == 7) break;
        print "Number $i\n";
    }
?>
```

这个更改后的循环输出：

```text
Number 1
Number 2
Number 4
Number 5
Number 6
```

注意，`Number 3`被直接跳过，在`Number 6`后没有输出7，循环就直接退出了。这就是两个关键字的作用。当数字是3时，`continue`跳过输出，直接进入第四次循环；当数字是7时，循环直接终止并退出。
