---
title: Използване на `until`
---

{% include menu.html %}

Цикълът `until` е обратното на `while`. Той изпълнява блока от код, докато условието стане `True`. С други думи, той работи, докато условието е `False`.

Ето отново [програмата от предишната страница](../while). Сега тя използва `until` и ново условие:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Стартирайте програмата и вижте изхода:

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

## `until` срещу `while`

Сравнете тези два реда. Те правят едно и също с `while` и `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Двете условия са противоположни едно на друго. Така `while` и `until` работят като двойка, точно като `if` и `unless`.

{% include nav.html %}
