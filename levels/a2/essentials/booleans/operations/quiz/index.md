---
title: 'Quiz: Boolean operations'
---

{% include menu.html %}

Below are some programs. What does each program print? Choose the correct answer.

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

What does this program print?

```raku
my $value = True || False && True;
say $value;
```

{:.quiz}
1 | True
0 | False

{% include quiz.html %}

## Comments

The second and third programs have expressions with three Boolean values. The result depends on the order of the operations. The `&&` operator has a higher precedence than `||`. So Raku does `&&` first.

{% include nav.html %}
