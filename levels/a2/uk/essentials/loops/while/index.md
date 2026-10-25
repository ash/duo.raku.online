---
title: Використання `while`
---

{% include menu.html %}

Цикл `while` має умову і блок коду. Raku виконує блок знову і знову, _поки_ умова є `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Програма просить у вас число. Якщо число не більше 10, цикл виконується знову. Коли число більше 10, умова `$x <= 10` уже не є істинною. Тоді цикл зупиняється, і програма переходить до наступного рядка.

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
