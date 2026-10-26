---
title: 'Solution: Четно, нечетно или нула'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $n = 12;

given $n {
    when 0      { say 'zero' }
    when $_ %% 2 { say 'even' }
    default     { say 'odd' }
}
```

🦋 Можете да намерите изходния код във файла [sign-of-a-number.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/given-when/sign-of-a-number.raku).

## Изход

```
even
```

## Коментари

1. `when 0` съвпада само с една стойност, нулата. Той е първи. Нулата също е четна, но ние искаме да я покажем отделно.

1. `when $_ %% 2` е условие. Тук `$_` е темата от `given`. Операторът `%%` проверява дали тя се дели на две без остатък. Стойността `12` не е нула. Но тя се дели на две. Затова програмата отпечатва `even`.

1. `default` е за всички други числа. Те не са нула и не са четни. Значи това са нечетните числа.

{% include nav.html %}
