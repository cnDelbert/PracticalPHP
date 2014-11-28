# 练习

---

关于本章的几个习题：

关于PHP 5的说法哪个是真的？
- [ ] `require`和`include`是相同的
- [ ] 不管引入的代码是否执行，`require`都会包含文件
- [x] 无法包含文件时，`require`会退出程序
- [ ] 以上都不对

> `require`和`include`虽然都是引入其他文件，但是在无法引入文件的情况下，`require`会直接中止程序的执行。

下面哪种不能作为PHP的注释开头？
- [ ] `//`
- [ ] `##`
- [ ] `/*`
- [x] 以上都能

> `##`作为注释的开头，第一个`#`开启注释，第二个没有任何用处。答案为：以上都可以。

PEAR是？
- [ ] 一种好吃的水果（pear）
- [ ] The PHP Extended Assignment Repository
- [x] The PHP Extension and Application Repository

> The PHP Extension and Application Repository

定界符（Heredoc）是？
- [x] 一种方便的不用输入引号的定义字符串的方式
- [ ] PHP的一种自动化文档工具
- [ ] theredoc的反义词

> 定界符是为了方便输入的

混合处理模式是？
- [ ] 同时输出HTML和图像
- [x] 多次进出PHP处理模式
- [ ] PHP不支持

 > 只能选第二项

使用`switch - case`同使用多个`if`语句相比：
- [ ] 更快
- [ ] 便于阅读
- [x] 前两项
- [ ] 以上都不对

> 既快，又有好的可读性。

转义符是为了方便退出代码的？
- [ ] 真
- [x] 假

> 快速退出程序可以直接调用`exit`

---
