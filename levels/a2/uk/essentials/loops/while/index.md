---
title: Використання `while`
---

{% include menu.html %}

Цикл `while` має умову і блок коду. Умова є `True` або `False`. Raku виконує блок знову і знову, _поки_ умова є `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Програма просить у вас число. Якщо число — 10 або менше, цикл виконується знову. Якщо число більше за 10, умова `$x <= 10` є `False`. Тоді цикл зупиняється. Програма переходить до наступного рядка.

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

{% include nav.html %}
