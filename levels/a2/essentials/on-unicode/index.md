---
title: Notes on using Unicode
---

{% include menu.html %}

Raku expects all your program files to be in UTF-8. What does this mean in practice? You do not have to worry about characters outside ASCII. For example, you can put them into strings. But that is not all. Your program may also read a UTF-8 text file. Most likely, you do not have to worry about that either. Also, Raku gets the length of a string right. It counts characters, not bytes. We look at this in more detail later.

Here is the next thing to know. Names in your program can have non-Latin or non-English letters. If you like, you can name a variable `$ι` instead of `$i`. The compiler reads it correctly.

Raku is very careful with the Unicode properties of characters. For example, it knows which characters are letters or digits. It also knows which characters make pairs. Parentheses and other brackets are pairs. Often, different parts of the program can use different brackets. For example, our ‘Hello, World!’ program can use these non-Latin quotes. You will see them again later, in Raku grammars:

```raku
say ｢Hello, World!｣;
```

Some built-in operators have two forms. One form uses Unicode, and the other uses only ASCII. For example, you can write ‘not equal’ as `!=` or as `≠`. It is the same with set operations. One example is `∈`. Its ASCII form is `(elem)`. There is also a built-in constant. You can write it as `pi` or as `π`.

With numbers, you can write fractions as `½` instead of `0.5`. You can also calculate the square of `$x` as `$x²`. This uses a superscript character. It is small and written high.

Here is the full list of these pairs: 📖 [Unicode and ASCII symbols](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
