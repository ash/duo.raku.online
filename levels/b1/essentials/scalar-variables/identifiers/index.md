---
title: Variable names
---

{% include menu.html %}

Before we go on, here is an interesting topic: which names can variables have? So far, we have seen simple names like `$name` or `$age`. They had only lowercase letters of the English alphabet. But there are more possibilities.

## Upper case and lower case

Variable names, or _identifiers_, are case sensitive. This means that upper case and lower case letters are different. So all the names below refer to different scalar containers:

```raku
$myname

$MyName

$myName

$MYNAME
```

Which naming style to follow is up to you. But you may want to keep all-capital names for constants.

## Other characters

Some other ASCII characters are allowed too. These are digits, the underscore `_`, the hyphen `-` and the single quote `'`. The single quote stands for an apostrophe. Note that an identifier must start with a letter or an underscore. Both `-` and `'` must have a letter right after them. Here are a few more valid identifiers:

```raku
$___

$a'b'c

$my-name

$address2
```

Again, the choice of names is yours. But it is probably bad practice to make names hard to understand on purpose.

## Unicode characters

In fact, the idea of letters and digits is wider. It includes all characters which are letters or decimal digits according to their Unicode properties. For example, the following variables are valid in Raku:

```raku
$привет

$駱駝道

$αβγ

$Δ۲ # where ۲ is a digit
```

{% include nav.html %}
