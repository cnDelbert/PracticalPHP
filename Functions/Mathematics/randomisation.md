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

正如上面所提到的，二者都有相同的参数：两个随机参数
