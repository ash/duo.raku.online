---
title: 'Solution: Дробова частина'
---

{% include menu.html %}

Як отримати дробову частину числа? Відніміть цілу частину. Щоб отримати цілу частину, перетворіть число на `Int`.

## Код

Ось одне рішення:

```raku
my $n = 15.8972;
say $n - $n.Int;
```

🦋 Знайдіть програму у файлі [fractional-part.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/coercion/fractional-part.raku).

## Вивід

```console
$ raku exercises/coercion/fractional-part.raku
0.8972
```

## Коментар

Спробуйте програму також з від'ємними числами. Наприклад:

```raku
my $n = -15.8972;
say $n - $n.Int;
```

Тут результат теж правильний:

```console
$ raku exercises/coercion/fractional-part.raku
-0.8972
```

{% include nav.html %}
