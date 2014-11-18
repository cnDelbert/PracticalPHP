# 空白

空格、制表符以及插入的空白行对代码的执行都没有影响。例如，下面这段代码和上面那段代码执行结果一样，虽然在排版上看起来大相径庭：

```php
 <?php
    $name = "Paul"; print "Your name is $name\n";
    $name2 = $name; $age = 20;



    print "Your name is $name2, and your age is $age\n";


    print 'Goodbye, $name!\n';
?>
```

一般说来，推荐你利用空白将代码分成不同的区块，这样从视觉上对代码有一个直观的感受。
