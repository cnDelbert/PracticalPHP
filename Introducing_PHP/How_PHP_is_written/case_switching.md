# Switch语句

先来看一段代码：

```php
 <?php
    $Name = "Bob";
    if ($Name == "Jim") {
        print "Your name is Jim\n";
    } else {
        if ($Name == "Linda") {
            print "Your name is Linda\n";
        } else {
            if ($Name == "Bob") {
                print "Your name is Bob\n";
            } else {
                if ($Name == "Sally") {
                    print "Your name is Sally\n";
                } else {
                    print "I do not know your name!\n";
                }
            }
        }
    }
?>
```

由于上面的代码中，`if`语句是嵌套的，想要找出执行了什么代码并不容易。PHP为这种情况提出了一个解决方案，叫做`switch/case`语句。在`switch/case`中，先列出你要检查的对象，然后给出想要处理的值。使用`switch/case`语句来重写上面的代码：

```php
 <?php
    $Name = 'Bob';
    switch($Name) {
        case "Jim": print "Your name is Jim\n"; break;
        case "Linda": print "Your name is Linda\n"; break;
        case "Bob": print "Your name is Bob\n"; break;
        case "Sally": print "Your name is Sally\n"; break;
        default: print "I do not know your name!\n";
    }
?>
```

`switch/case`可以用来检查各种数据类型，比用`if`语句大大节省了空间。

使用`switch/case`语句需要注意两点：

1. 在`default`前没有`case`。
2. 每个`case`语句都是以`break;`结尾的。如果忘记了`break;`，PHP将会顺序执行下面的语句。

关键词`break`的意思是“跳出`switch/case`语句”。如果没有`break`，上面将会输出：

```text
Your name is Bob
Your name is Sally
I do not know your name
```

一旦PHP匹配了`Bob`，就会继续向下输出`Sally`和默认语句。除非你就是想要这么输出，否则最好还是使用`break`语句。
