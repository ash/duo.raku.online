---
title: 'Solution: Финално съобщение'
translations_gpt:
---

{% include menu.html %}

Ето едно възможно решение.

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

1. Phaser-ът `END` е написан преди цикъла, но се изпълнява последен. Той се изпълнява, когато основният код е завършил. Дотогава `$count` вече е увеличен три пъти.

1. Phaser-ът затваря над `$count`, което означава, че пази връзка към променливата. Затова той чете *крайната* стойност. Той не чете `0` от реда, където се появява phaser-ът. Това е обичайната причина да поставите обобщение в `END`.

{% include nav.html %}
