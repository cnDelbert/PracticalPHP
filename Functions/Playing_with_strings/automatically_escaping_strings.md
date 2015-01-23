# 自动转义字符串

```php
string addslashes ( string source)
string stripslashes ( string source)
```

有时候你在使用单引号、双引号或斜线的时候会出现一些问题，一些数据库、文件和一些协议要求你用`\`来进行转义，变成`\'`、`\"`和`\\`。`addslashes()`这个函数只有一个参数，返回这个参数转义之后的字符串以便使用。
