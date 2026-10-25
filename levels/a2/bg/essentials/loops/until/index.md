---
title: Използване на `until`
---

{% include menu.html %}

Цикълът `until` е обратното на цикъла `while`. Той изпълнява блока от код, докато условието стане `True`. Значи той работи, докато условието е `False`.

Ето отново [програмата от предишната страница](../while). Сега тя има `until` и ново условие:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Стартирайте програмата и вижте какво отпечатва:

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

Тези две програми правят едно и също. Едната има `while`, а другата има `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Вижте двете условия. Едното е обратното на другото. `while` и `until` са двойка, като `if` и `unless`.

{% include nav.html %}
