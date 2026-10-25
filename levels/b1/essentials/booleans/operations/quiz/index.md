---
title: 'Quiz: Boolean operations'
---

{% include menu.html %}

In each section below, select the answer that shows what the program prints.

## 1

Here is the program:

```raku
my $value = True && False;
say $value;
```

What does it print?

{:.quiz}
0 | True
1 | False

## 2 

What does the second program print?

```raku
my $value = True && False || True;
say $value;
```

{:.quiz}
1 | True
0 | False

## 3

What is the output of this program?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Comments

The second and third programs have expressions with three Boolean values. The result depends on the order in which Raku does the operations. The `&&` operator has a higher precedence than `||`, so Raku does it first.

{% include nav.html %}
