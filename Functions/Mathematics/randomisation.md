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

两个函数做的事情是一样的，需要的参数也是一样的，那这两者的区别在哪？
