# 注释

在PHP模式当中，你可以将不需要执行的代码注释起来。PHP有三种注释模式：`//`、`/* */`和`#`。其中，`//`和`/* */`表示注释掉本行，`/* */`表示注释掉二者之间的部分。使用`/* */`会有一些副作用，因此使用相对较少。

```php
 <?php
    print "This is printed\n";
    // print "This is not printed\n";
    # print "This is not printed\n";
    print "This is printed\n";
    /* print "This is not printed\n";
    print "This is not printed\n"; */
?>
```

上面的代码展示了三种注释的使用方式，但是没有说明`/* */`存在的问题。如果你用`/*`开始了注释，而`*/`和另外一个`/*`连在一起的话，你就会发现代码不工作了。这是因为`/* */`形式的注释不能连起来用，也不能嵌套，否则代码就会崩溃。

通常来说，一般用`//`来注释，简单、容易发现、易于阅读和控制。
