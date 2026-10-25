---
title: Variable names
---

{% include menu.html %}

Before we go on, let's look at an interesting topic. What names can variables have? Until now, we used simple names, like `$name` or `$age`. They have only lowercase letters from the English alphabet. But there are more options.

## Capital and small letters

Variable names are also called _identifiers_. In identifiers, capital and small letters are different. So each name below means a different scalar container:

```raku
$myname

$MyName

$myName

$MYNAME
```

You decide how to name your variables. But here is an idea. Keep all-capital names for constants. Constants are values that do not change.

## Other characters

Some other ASCII characters are possible too. You can use digits and the underscore `_`. You can also use the hyphen `-` and the single quote `'`. Here, the single quote means an apostrophe. An identifier must start with a letter or an underscore. After a `-` or a `'`, there must be a letter. Here are a few more correct identifiers:

```raku
$___

$a'b'c

$my-name

$address2
```

Again, you choose the names. But some names look like a secret code. It is probably a bad idea to choose such names on purpose.

## Unicode characters

In fact, there are many more letters and digits. Unicode has properties for every character. They say if the character is a letter or a decimal digit. Raku uses these properties. For example, these variables are correct in Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # where ۲ is a digit
```

{% include nav.html %}
