---
title: 'Solution: Дробна част'
---

{% include menu.html %}

Как да получите дробната част на едно число? Извадете цялата част. За да получите цялата част, преобразувайте числото в `Int`.

## Код

Ето едно решение:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Намерете програмата във файла [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Изход

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Коментар

Опитайте програмата и с отрицателни числа. Например:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

И тук резултатът е правилен:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
