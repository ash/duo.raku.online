---
title: 'Розв''язання: Інтервальна функція'
---

{% include menu.html %}

Ця функція використовує конструкцію `if` з трьома гілками. Перші дві гілки мають булеву перевірку. Третій гілці перевірка не потрібна. Якщо число не пройшло перші дві перевірки, це єдиний варіант, що залишається.

## Код

Ось рішення:

```raku
sub f($x) {
    if    $x > 0  { return $x - 0.5 }
    elsif $x == 0 { return 0 }
    else          { return -$x }
}

say f(-2);
say f(0);
say f(3);
```

🦋 Знайдіть програму у файлі [interval-function.raku](https://github.com/ash/raku-course/blob/master/exercises/essentials/functions/interval-function.raku).

## Вивід

```console
$ raku exercises/functions/interval-function.raku
2
0
2.5
```

{% include nav.html %}
