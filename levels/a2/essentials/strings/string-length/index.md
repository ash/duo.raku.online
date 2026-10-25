---
title: String length in Raku
---

{% include menu.html %}

Raku strings are Unicode strings. Because of this, some simple things are a bit more difficult. Or, at least, you need to think more about them. For example, take the length of a string. Is it the number of characters? Or is it the number of bytes? And sometimes the same character has different parts in different strings. Is it still one character then?

## Length in characters

The `chars` _method_ gives the length of a string in characters:

```raku
my $str = '你好世界';
say $str.chars;
```

We talk about methods later. But we can already use them now. In Raku, you can call methods on almost every object. Strings and scalar variables are objects too. To call a method, write a dot. Here, the variable keeps a string. We call the method on this variable: `$str.chars`.

This Chinese greeting has four characters: 你好世界. And `$str.chars` gives exactly `4`.

## Length in bytes

This is only for your information. Here is how to get the length of a string in bytes. For this, you need to know the encoding of the string:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

This time, the program prints `12`. Look at the second line. It has two method calls, one after the other.

## Length in code points

To finish this topic, here is one more useful method for string length: `codes`. It gives the number of code points in the string. A code point is the number of a character in Unicode. Before counting, Raku normalizes the string. It brings the string to a standard form. Often, `codes` and `chars` give the same result. But in some rare cases, the two methods give different results. For example, you can build ‘an impossible’ character. The whole Unicode space has no single code point for it.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

The character `x̨` has no code point of its own. You can only build it from two parts. The first part is the lowercase letter `x`. The second part is the combining character `0x0328`. It adds a mark to the letter. So, it is one character, but it has two code points. That is why the program prints this:

    1
    2

{% include nav.html %}
