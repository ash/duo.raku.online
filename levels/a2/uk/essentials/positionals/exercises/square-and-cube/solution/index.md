---
title: 'Розв''язання: Квадрат і куб'
---

{% include menu.html %}

## Код 1

Просте рішення використовує оператор `**`.

```raku
my $n = @*ARGS[0];
say $n ** 2;
say $n ** 3;
```

🦋 Знайдіть програму у файлі [square-and-cube.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube.raku).

## Код 2

Інше рішення виглядає трохи гарніше. Воно використовує надрядкові знаки Unicode. Це маленькі цифри вгорі рядка.

```raku
my $n = @*ARGS[0];
say $n²;
say $n³;
```

🦋 Знайдіть програму у файлі [square-and-cube-2.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/positionals/square-and-cube-2.raku).

## Вивід

Запустіть програму кілька разів. Перевірте її з різними числами.

```console
$ raku exercises/positionals/square-and-cube.raku 5
25
125
```

{% include nav.html %}
