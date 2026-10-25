---
title: Використання `while`
---

{% include menu.html %}

Цикл `while` має булеву умову (`True` або `False`) і блок коду. Raku повторює блок, _поки_ умова є `True`.

```raku
my $x = 0;
while $x <= 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Програма просить вас ввести число. Якщо число не більше 10, тіло циклу виконується знову. Коли число не відповідає умові `$x <= 10`, цикл закінчується. Тоді програма переходить до наступного рядка.

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
