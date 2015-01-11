# 随机化

```php
int rand ( [int min, int max])
int mt_rand ( [int min, int max])
int getrandmax ( )
int mt_getrandmax ( )
void srand ( [int seed])
void mt_srand ( [int seed])
```

有时候你需要在你的代码中添加一些随机的行为：在访问你网站的时候给出不同的欢迎语时；编写一个游戏时；或者在通过hash来保证数据安全时。任何一种情况下，随机化都是简单且有效的方式，而且仅仅需要两个函数：`rand()`和`mt_rang()`。

两个函数做的事情是一样的，需要的参数也是一样的，那这两者的区别在哪？好吧，`rand()`是一个基本的随机函数，速度很快，但并不是真正的“随机”：它产生的数字相对来说有可预见性。而`mt_rand()`则不同，，它更加复杂：“mt”部分的意思是“Mersenne Twister”，也就是它所使用的随机算法的名字。`mt_rand()`以牺牲速度为代价，产生更加“随机”的数字。

正如上面所提到的，二者都有相同的参数：两个参数都是可选的，分别是要返回随机数的下界和上界。如果不提供参数，PHP将会返回一个值在1到某个很大的数之间的随机数。下面来看个例子：

```php
<?php
    $random = rand();
    $randrange = rand(1,10);
    $mtrandrange = mt_rand(1,100);
?>
```

注意，传入的两个数也是被包含在返回区间内的。也就是说`$randrange`的值可能是包含1和10在内的1到10之间的任何数字。

如果没有传递任何参数，直接调用`rand()`和`mt_rand()`的话，PHP将会返回1到某个很大的数之间的值。想要知道`rand()`的最大的数的话，调用`getrandmax()`就可以了。对`mt_rand()`而言，对应的就是`mt_getrandmax()`。

既然已经知道随机数是怎么回事了，就来看一个例子，访客访问网站的时候产生随机的问候语：

```php
<?php
    switch(rand(1,6)) {
        case 1:
            $greet = 'Hello!'; break;
        case 2:
            $greet = 'Welcome!'; break;
        case 3:
            $greet = 'Greetings!'; break;
        case 4:
            $greet = 'Salutations!'; break;
        case 5:
            $greet = 'Good day!'; break;
        case 6:
            $greet = 'Yo!'; break;
    }
    print $greet;
?>
```

上面的代码中，我们在进入`switch`之前，并没有将`rand()`的结果赋值给一个变量，当然，为了便于阅读的话，你也可以那么做。

需要注意的是，随机化的速度和你传入的值的大小无关：对`rand()`函数而言，`rand(1, 3)`和`rand(1, 10000000)`的返回速度是一样的。而`mt_rand()`的效率大约比`rand()`低50%，也就是说，只有你在有特殊需求的时候才应该用它。

为了说明这两个函数运行的多快，同是也为了说明传入值的大小对运行速度没有影响，来运行一下下面的代码：

```php
<?php
    $START = time();
    for ($i = 1; $i < 1000000; ++$i) {
        $j = rand(1,100);
    }
    $END = time() - $START;
    print "Short rand() took $END seconds\n";

    $START = time();
    for ($i = 1; $i < 1000000; ++$i) {
        $j = mt_rand(1,100);
    }
    $END = time() - $START;
    print "Short mt_rand() took $END seconds\n";

    $START = time();
    for ($i = 1; $i < 1000000; ++$i) {
        $j = rand(1,10000000);
    }
    $END = time() - $START;
    print "Long rand() took $END seconds\n";

    $START = time();
    for ($i = 1; $i < 1000000; ++$i) {
        $j = mt_rand(1,10000000);
    }
    $END = time() - $START;
    print "Long mt_rand() took $END seconds\n"
?>
```

大多数随机数产生器需要一个“种子”
