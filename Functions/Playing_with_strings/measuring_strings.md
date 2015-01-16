# 字符串统计

```php
int strlen ( string source)
mixed count_chars ( string string [, int mode])
mixed str_word_count ( string string [, int format])
```

可以从三个方面对字符串及其内容进行统计。最简单也最直观的就是统计字符串里面的字符数。用`strlen()`函数就可以完成，它只接受要统计的字符串一个参数，返回字符串内的字符数。这个函数很简单，不用例子都可以说明白，但是保险起见，我们还是来看一下这个例子吧：

```php
<?php
    print strlen("Foo") . "\n"; // 3
    print strlen("Goodbye, Perl!") . "\n"; // 14
?>
```

关于`strlen()`没有什么别的可说的了，这个函数就是这么简单直接。再多说一句：这个函数非常有用，肯定会在你写的代码里面出现的。

另外两个函数从另外两个方面对字符串进行统计：`count_chars()`返回传入字符串中每个字母及其出现的次数；`str_word_count()`返回传入字符串中每个单词奇迹出现的次数。

用`count_chars()`时，它返回的实际是一个有255个元素的数组，每个元素对应一个ASCII码，这样导致处理起来相对复杂。你可以对它进行处理，如掉其中值（频率）为0的元素，或者你可以给这个函数传递第二个参数。当第二个参数为1时，只有频率大于0的字母才会被列出，如果第二个参数为2，只有频率为1的字母才被列出。

和`count_chars()`相似，你可以给`str_word_count()`传递第二个参数来完成相似的事情。默认情况下，它返回的是字符串中独立单词的数目。当第二个参数为1时，返回找到单词的数组；当第二个参数为2时，除了每个单词的键被设置为单词的位置外，其余同1一样。

```php
<?php
    $str = "This is a test, only a test, and nothing but a test.";
    $a = count_chars($str, 1);
    $b = str_word_count($str, 1);
    $c = str_word_count($str, 2);
    $d = str_word_count($str);
    print_r($a);
    print_r($b);
    print_r($c);
    echo "There are $d words in the string\n";
?>
```

输出如下：

```text
Array
(
    [32] => 11
    [44] => 2
    [46] => 1
    [84] => 1
    [97] => 4
    [98] => 1
    [100] => 1
    [101] => 3
    [103] => 1
    [104] => 2
    [105] => 3
    [108] => 1
    [110] => 4
    [111] => 2
    [115] => 5
    [116] => 8
    [117] => 1
    [121] => 1
)
Array
(
    [0] => This
    [1] => is
    [2] => a
    [3] => test
    [4] => only
    [5] => a
    [6] => test
    [7] => and
    [8] => nothing
    [9] => but
    [10] => a
    [11] => test
)
Array
(
    [0] => This
    [5] => is
    [8] => a
    [10] => test
    [16] => only
    [21] => a
    [23] => test
    [29] => and
    [33] => nothing
    [41] => but
    [45] => a
    [47] => test
)
There are 12 words in the string
```

在输出的第一个数组中，方括号中的数字是对应字母的ASCII码值，后面的数字是每个字母出现的频率。

在输出的第二个数组中，数组元素的键没有任何意义，每个元素的值是字符串中的单词。逗号和句号不是单词，因此没有在其中出现。

第三条输出中，每个元素的键是其对应单词第一个字母出现的位置，因此0就代表“This”中在字符串中开始的位置。

最后是`str_word_count()`的默认输出，输出字符串中单词的个数。
