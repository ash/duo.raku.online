---
title: String length in Raku
---

{% include menu.html %}

Because strings in Raku are Unicode, some simple things become a bit more difficult. Or, at least, you need to think about them more carefully. Take, for example, the length of a string. Is it the number of characters or the number of bytes? And what if the same character is made of different parts in different strings? Is it still one character?

## Length in characters

To find out how many characters a string has, use the `chars` _method_:

```raku
my $str = '你好世界';
say $str.chars;
```

We will talk about methods later, but we should already be able to use them. In Raku, you can call methods on almost any object, including strings and scalar variables. To call a method, use a dot. So here, we call the method on a variable which keeps a string: `$str.chars`.

The Chinese greeting 你好世界 has four characters. And `$str.chars` returns exactly `4`.

## Length in bytes

Just for reference, here is how to find the length of a string in bytes. In this case, you need to know which encoding is used for the string:

```raku
my $str = '你好世界';
say $str.encode('UTF-8').bytes;
```

This time, the program prints `12`. Note that the second line has two method calls in a chain.

## Length in code points

Just to complete the picture, here is one more useful method related to string length: `codes`. It returns the number of code points in the string after the string is normalized. In many cases, `codes` and `chars` return the same number. But in some rare cases, the two methods give different results. For example, you may build ‘an impossible’ character. There is no single code point for it in the whole Unicode space.

```raku
say 'x̨'.chars;
say 'x̨'.codes;
```

This character, `x̨`, has no code point of its own. It can only be built from two parts. They are the lowercase letter `x` and the combining character `0x0328`. So, there is still one character, but there are two code points. That is why the program prints:

    1
    2

{% include nav.html %}
