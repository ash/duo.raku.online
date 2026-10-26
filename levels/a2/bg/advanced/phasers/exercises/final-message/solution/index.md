---
title: 'Solution: Финално съобщение'
translations_gpt:
---

{% include menu.html %}

Ето един начин да решите задачата.

## Код

```raku
my $count = 0;

END say "processed $count items";

$count++ for 1..3;
```

🦋 Можете да намерите изходния код във файла [final-message.raku](https://github.com/ash/raku-course/blob/master/exercises/advanced/phasers/final-message.raku).

## Изход

```
processed 3 items
```

## Коментари

1. Phaser-ът `END` стои преди цикъла в кода. Но той се изпълнява последен, след основния код. Дотогава цикълът е добавил 1 към `$count` три пъти.

1. Phaser-ът пази връзка към променливата `$count`. Затова той чете *крайната* стойност на променливата. Той не чете `0` от реда на phaser-а. Това е обичайната причина да сложите обобщение в `END`.

{% include nav.html %}
