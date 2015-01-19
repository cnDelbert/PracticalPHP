# 字符串换行

```php
string wordwrap ( string source [, int width [, string break [, boolean cut]]])
```

尽管网页中的文字会自动换行，但是在下面的情况中，你也许希望能够自己换行：

- 当向控制台中进行输出时，文本不会自动换行。因此，除非你想用户自己拖动滚动条，否则还是自己主动换行吧。
- 当向一个固定文本宽度的网页输出内容时，运行浏览器自动换行会将之前的设计布局打乱。

在遇到上述两种情况时，你需要`wordwrap()`。如果你直接向`wordwrap()`传入字符串，没有其余的参数时，PHP将每75个字符插入一个`\n`。当然，你可以在第二和第三个参数中自动逸每行的字符数和换行标记：

```php
<?php
    $text = "Word wrap will split this text up into smaller lines, which makes for easier reading and neater layout.";
    $text = wordwrap($text, 20, "<br />");
    print $text;
?>
```

运行代码，将输出：

```text
Word wrap will split<br />this text up into<br />smaller lines, which<br />makes for easier<br />reading and neater<br />layout.
```
上面的代码中，`wordwrap()`使用了HTML的换行标记`<br />`，每20个字符进行一次换行。默认情况下，`wordwrap()`的换行策略是这样的：如果你第二个参数是20，`wrap()`将可能在不到20个字母的时候进行换行（保证单词不被打断），
而不是21或22个字母的时候。如果单词本身长度超过20个字符，`wordwrap()`将直接返回整个单词而不会讲单词打断。

如果你想强制在某个长度上换行，你可以将第四个参数设置为1，允许打断单词。下面是个例子：

```php
<?php
    $text = "Micro-organism is a very long word.";
    $text = wordwrap($text, 6, "\n", 1);
    print $text;
?> 
```

输出如下：

```text
Micro-
organi
sm is
a very
long
word.
```
