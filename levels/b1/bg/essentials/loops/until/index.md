---
title: Използване на `until`
---

{% include menu.html %}

Цикълът `until` прави обратното на `while`. Той изпълнява блока от код, докато условието стане `True`. С други думи, той работи, докато условието е `False`.

Това е [програмата от предишната страница](../while), но сега с `until` и ново условие:

```raku
my $x = 0;
until $x > 10 {
    $x = prompt 'Enter a number, which is not bigger than 10: ';
    say "You entered $x.";
}
say "$x is bigger than 10.";
```

Стартирайте програмата и погледнете изхода:

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

Сравнете две програми, които правят едно и също, едната с `while`, а другата с `until`:

```raku
while $x <= 10 { . . . }

until $x > 10 { . . . }
```

Както виждате, всяко условие е обратното на другото. Така `while` и `until` са двойка по същия начин като `if` и `unless`.

{% include nav.html %}
