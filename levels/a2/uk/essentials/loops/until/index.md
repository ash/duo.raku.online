---
title: Використання `until`
---

{% include menu.html %}

Цикл `until` — протилежність циклу `while`. Він виконує блок коду, поки умова не стане `True`. Тож він працює, поки умова є `False`.

Ось знову [програма з минулої сторінки](../while). Тепер у ній є `until` і нова умова:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Запустіть програму і подивіться, що вона виводить:

```console
$ raku t.raku 
Enter a number, which is not bigger than 10: 10
You entered 10.
Enter a number, which is not bigger than 10: 4
You entered 4.
Enter a number, which is not bigger than 10: 1
You entered 1.
Enter a number, which is not bigger than 10: 20
You entered 20.
20 is bigger than 10.
```

## `until` проти `while`

Ці дві програми роблять те саме. Одна має `while`, а друга має `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Подивіться на дві умови. Одна протилежна до іншої. `while` і `until` — це пара, як `if` і `unless`.

{% include nav.html %}
