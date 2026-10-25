---
title: Notes on using Unicode
---

{% include menu.html %}

Raku assumes that all your program files are saved in UTF-8. In practice, you don’t have to worry about non-ASCII characters. For example, you can use them in string literals. But that is not all. Reading a UTF-8 text file is most likely no problem either. It also means that Raku gets the length of a string right. It counts characters, not bytes. We will look at this in more detail later.

Here is the next thing you should know. Identifiers, or names, can have non-Latin or non-English letters. If you like, you can name your variable `$ι` instead of `$i`. The compiler will read it correctly.

Raku is quite strict about the Unicode properties of characters. For example, it knows if a character is a letter or a digit. It also knows which characters form pairs, like parentheses and other brackets. Often, different parts of the program can use different types of brackets. For example, let us change our ‘Hello, World!’ program. We can use these non-Latin quotes in it. You will see them again when we work with Raku grammars:

```raku
say ｢Hello, World!｣;
```

Some built-in operators have two forms: Unicode and ASCII. For example, you can type ‘not equal’ as `!=` or as `≠`. The same is true for set operations. For example, `∈` has a pure ASCII version, `(elem)`. Also, you can refer to a built-in constant as `pi` or `π`.

With numbers, you can use fractions such as `½` instead of `0.5`. You can also get the square of `$x` with a superscript character: `$x²`.

See the full list of such pairs in the documentation: 📖 [Unicode versus ASCII symbols](https://docs.raku.org/language/unicode_ascii).

{% include nav.html %}
